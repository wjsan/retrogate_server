import 'dart:io';
import 'dart:typed_data';

import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_model.pb.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/repository/shortcut_repository.dart';
import 'dart:convert';

import 'package:retrogate_server/modules/shortcut/infra/repository/binary_reader.dart';

class ShortcutRepositoryImpl implements ShortcutRepository {
  final GetConfigUsecase _getConfigUsecase;

  ShortcutRepositoryImpl(this._getConfigUsecase);

  @override
  Future<Either<ErrorBase, ShortcutModel>> create(ShortcutModel shortcut) async {
    var config = await _getConfigUsecase();
    var filePath = '${config.steamPath}/userdata/${config.steamUserId}/config/shortcuts.vdf';
    var exists = await File(filePath).exists();

    if(!exists) {
      await File(filePath).create(recursive: true);
      await _writeShortcuts(filePath, []);
    }

    var shortcutsResult = await getAll();
    return shortcutsResult.fold(
      (error) => Left(error),
      (shortcuts) {
        if(shortcut.appId == 0) {
          shortcut.appId = generateAppId(shortcut.exe, shortcut.appName);
        }
        if (shortcuts.any((sc) => sc.appId == shortcut.appId)) {
          return Left(ErrorAlreadyExists(
              "Shortcut with the same appId already exists"));
        }
        shortcuts.add(shortcut);
        _writeShortcuts(filePath, shortcuts);
        
        return Right(shortcut);
      },
    );
  }

  @override
  Future<Either<ErrorBase, void>> delete(String id) async {
    var config = await _getConfigUsecase();
    var filePath =
        '${config.steamPath}/userdata/${config.steamUserId}/config/shortcuts.vdf';

    var shortcutsResult = await getAll();
    return shortcutsResult.fold(
      (error) => Left(error),
      (shortcuts) {
        var initialLength = shortcuts.length;
        shortcuts.removeWhere((sc) => sc.appId.toString() == id);

        if (shortcuts.length == initialLength) {
          return Left(ErrorNotFound("Shortcut with id $id not found"));
        }

        _writeShortcuts(filePath, shortcuts);
        return Right(null);
      },
    );
  }

  @override
  Future<Either<ErrorBase, List<ShortcutModel>>> getAll() async {
    var config = await _getConfigUsecase();
    var shortcutsFilePath =
        '${config.steamPath}/userdata/${config.steamUserId}/config/shortcuts.vdf';
    
    var shortcuts = <ShortcutModel>[];
    var file = File(shortcutsFilePath);
    var fileExists = await file.exists();
    var fileLength = await file.length();

    if(!fileExists || fileLength == 0) {
      return Right(shortcuts);
    }

    var bytes = await file.readAsBytes();
    var reader = BinaryReader(bytes);
    
    var rootType = reader.readByte();
    var rootKey = _readNullTerminatedString(reader);

    if(rootType != 0x00 || rootKey.toLowerCase() != 'shortcuts') {
      return Left(ErrorInvalidFormat("Invalid shortcuts.vdf format"));
    }

    while (true) {
      final type = reader.readByte();
      if (type == 0x08) break; // end of root dict

      if (type != 0x00) {
        return Left(ErrorInvalidFormat(
            "Expected nested dictionary for shortcut entry, got type 0x${type.toRadixString(16)}"));
      }

      final shortcut = _parseShortcut(reader);
      shortcuts.add(shortcut);
    }

    return Right(shortcuts);
  }

  @override
  Future<Either<ErrorBase, ShortcutModel>> getById(String id) {
    var shortcutsResult = getAll();
    return shortcutsResult.then((either) => either.fold(
          (error) => Left(error),
          (shortcuts) {
            try {
              final shortcut = shortcuts
                  .firstWhere((sc) => sc.appId.toString() == id);
              return Right(shortcut);
            } catch (e) {
              return Left(ErrorNotFound("Shortcut with id $id not found"));
            }
          },
        ));
  }

  @override
  Future<Either<ErrorBase, void>> update(ShortcutModel shortcut) async {
    var config = await _getConfigUsecase();
    var filePath =
        '${config.steamPath}/userdata/${config.steamUserId}/config/shortcuts.vdf';

    return getAll().then((either) => either.fold(
          (error) => Left(error),
          (shortcuts) {
            final index =
                shortcuts.indexWhere((sc) => sc.appId == shortcut.appId);
            if (index == -1) {
              return Left(ErrorNotFound(
                  "Shortcut with appId ${shortcut.appId} not found"));
            }

            shortcuts[index] = shortcut;
            _writeShortcuts(filePath, shortcuts);
            return Right(null);
          },
        ));
  }

  static ShortcutModel _parseShortcut(BinaryReader reader) {
    final sc = ShortcutModel();

    var index = _readNullTerminatedString(reader);
    print('Parsing shortcut index: $index');

    while (true) {
      final type = reader.readByte();
      if (type == 0x08) break; // end of this shortcut dict

      final key = _readNullTerminatedString(reader);
      final k = key.toLowerCase();

      switch (type) {
        case 0x00: // nested dict, e.g. tags
          // ShortcutModel doesn't have tags field; skip nested structures
          if (k == 'tags') {
            _parseTag(reader);
          } else {
            _skipDictionary(reader);
          }
          break;
        case 0x01: // string
          final val = _readNullTerminatedString(reader);
          _assignString(sc, k, val);
          break;
        case 0x02: // int32
          final intval = reader.readUInt32();
          _assignInt(sc, k, intval);
          break;
        default:
          throw Exception(
            "Unknown type 0x${type.toRadixString(16)} for key '$key'",
          );
      }
    }

    return sc;
  }

  static List<String> _parseTag(BinaryReader reader) {
    var tags = <String>[];
    while (true) {
      final type = reader.readByte();
      if (type == 0x08) break; // end of tags dict

      if (type != 0x01) {
        throw Exception(
          "Unexpected type in tags dict: 0x${type.toRadixString(16)}",
        );
      }

      String val = _readNullTerminatedString(reader);
      tags.add(val);
    }
    return tags;
  }

  static String _readNullTerminatedString(BinaryReader reader) {
    final bytes = <int>[];
    while (true) {
      final b = reader.readByte();
      if (b == 0) break;
      bytes.add(b);
    }
    return utf8.decode(bytes);
  }

  // Helpers / stubs - implement mapping according to your ShortcutModel fields
  static void _assignString(ShortcutModel sc, String key, String val) {
    switch (key) {
      case 'appname':
        sc.appName = val;
        break;
      case 'exe':
        sc.exe = val;
        break;
      case 'startdir':
        sc.startDir = val;
        break;
      case 'icon':
        sc.icon = val;
        break;
      case 'shortcutpath':
        sc.shortcutPath = val;
        break;
      case 'launchoptions':
        sc.launchOptions = val;
        break;
      case 'devkitgameid':
        sc.devkitGameId = val;
        break;
      case 'flatpakappid':
        sc.flatpakAppId = val;
        break;
      case 'sortas':
        sc.sortAs = val;
        break;
      default:
        break;
    }
  }

  static void _assignInt(ShortcutModel sc, String key, int val) {
    switch (key) {
      case 'appid':
        sc.appId = val;
        break;
      case 'devkitoverrideappid':
        sc.devkitOverrideAppId = val;
        break;
      case 'lastplaytime':
        sc.lastPlayTime = val;
        break;
      case 'ishidden':
        sc.isHidden = val != 0;
        break;
      case 'allowdesktopconfig':
        sc.allowDesktopConfig = val != 0;
        break;
      case 'allowoverlay':
        sc.allowOverlay = val != 0;
        break;
      case 'openvr':
        sc.openVr = val != 0;
        break;
      case 'devkit':
        sc.devkit = val != 0;
        break;
      default:
        break;
    }
  }

  static void _skipDictionary(BinaryReader reader) {
    while (true) {
      final type = reader.readByte();
      if (type == 0x08) return; // end of this dict

      final key = _readNullTerminatedString(reader);
      if (type == 0x00) {
        _skipDictionary(reader);
      } else if (type == 0x01) {
        _readNullTerminatedString(reader);
      } else if (type == 0x02) {
        reader.readInt32();
      } else {
        throw Exception(
          "Unknown type 0x${type.toRadixString(16)} while skipping dictionary for key '$key'",
        );
      }
    }
  }

  static Future<void> _writeShortcuts(String filePath, List<ShortcutModel> shortcuts) async {
    final out = BytesBuilder();

    // Write root dictionary start
    out.addByte(0x00);
    out.add(utf8.encode('shortcuts'));
    out.addByte(0x00);

    for (var i = 0; i < shortcuts.length; i++) {
      // dictionary key (string) for the shortcut index
      out.addByte(0x00);
      out.add(utf8.encode(i.toString()));
      out.addByte(0x00);

      // Write shortcut binary data (inner dictionary content)
      final shortcutBytes = _buildShortcut(shortcuts[i]);
      out.add(shortcutBytes);

      // end of this shortcut dictionary
      out.addByte(0x08);
    }

    // final end markers for shortcuts dictionary
    out.addByte(0x08);
    out.addByte(0x08);

    final bytes = out.takeBytes();
    final file = File(filePath);
    await file.create(recursive: true);
    await file.writeAsBytes(bytes, flush: true);
  }

  static Uint8List _int32ToBytesLE(int value) {
    final bd = ByteData(4);
    bd.setInt32(0, value, Endian.little);
    return bd.buffer.asUint8List();
  }

  static Uint8List _buildShortcut(ShortcutModel sc) {
    final b = BytesBuilder();

    void writeStringField(String key, String? value) {
      if (value == null || value.isEmpty) return;
      b.addByte(0x01); // string type
      b.add(utf8.encode(key));
      b.addByte(0x00);
      b.add(utf8.encode(value));
      b.addByte(0x00);
    }

    void writeIntField(String key, int? value) {
      if (value == null) return;
      b.addByte(0x02); // int32 type
      b.add(utf8.encode(key));
      b.addByte(0x00);
      b.add(_int32ToBytesLE(value));
    }

    void writeBoolAsInt(String key, bool? value) {
      if (value == null) return;
      writeIntField(key, value ? 1 : 0);
    }

    // Write known fields
    writeIntField('appid', sc.hasAppId() ? sc.appId : null);
    writeStringField('appname', sc.hasAppName() ? sc.appName : null);
    writeStringField('exe', sc.hasExe() ? sc.exe : null);
    writeStringField('startdir', sc.hasStartDir() ? sc.startDir : null);
    writeStringField('icon', sc.hasIcon() ? sc.icon : null);
    writeStringField('shortcutpath', sc.hasShortcutPath() ? sc.shortcutPath : null);
    writeStringField('launchoptions', sc.hasLaunchOptions() ? sc.launchOptions : null);
    writeBoolAsInt('ishidden', sc.hasIsHidden() ? sc.isHidden : null);
    writeBoolAsInt('allowdesktopconfig', sc.hasAllowDesktopConfig() ? sc.allowDesktopConfig : null);
    writeBoolAsInt('allowoverlay', sc.hasAllowOverlay() ? sc.allowOverlay : null);
    writeBoolAsInt('openvr', sc.hasOpenVr() ? sc.openVr : null);
    writeBoolAsInt('devkit', sc.hasDevkit() ? sc.devkit : null);
    writeStringField('devkitgameid', sc.hasDevkitGameId() ? sc.devkitGameId : null);
    writeIntField('devkitoverrideappid', sc.hasDevkitOverrideAppId() ? sc.devkitOverrideAppId : null);
    writeIntField('lastplaytime', sc.hasLastPlayTime() ? sc.lastPlayTime : null);
    writeStringField('flatpakappid', sc.hasFlatpakAppId() ? sc.flatpakAppId : null);
    writeStringField('sortas', sc.hasSortAs() ? sc.sortAs : null);

    // Note: Do NOT write an end marker here - caller writes 0x08 after adding these bytes
    return b.toBytes();
  }

  
  static int generateAppId(String exe, String appName) {
    final key = utf8.encode('$exe$appName');
    final hash = _computeCrc32(key);
    var top = (hash | 0x80000000) & 0xFFFFFFFF;
    return top | 0x02000000;
  }

  // Compute CRC32 (compatible with common CRC32/IEEE 802.3, polynomial 0xEDB88320)
  static int _computeCrc32(Uint8List bytes) {
    const int polynomial = 0xEDB88320;
    final table = List<int>.filled(256, 0);

    for (int i = 0; i < 256; i++) {
      int temp = i;
      for (int j = 0; j < 8; j++) {
        if ((temp & 1) == 1) {
          temp = (polynomial ^ (temp >> 1)) & 0xFFFFFFFF;
        } else {
          temp = (temp >> 1) & 0xFFFFFFFF;
        }
      }
      table[i] = temp;
    }

    int crc = 0xFFFFFFFF;
    for (final b in bytes) {
      final index = (crc & 0xFF) ^ b;
      crc = ((crc >> 8) ^ table[index]) & 0xFFFFFFFF;
    }
    return (~crc) & 0xFFFFFFFF;
  }
}
