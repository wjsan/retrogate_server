import 'dart:typed_data';

class BinaryReader {
  final Uint8List _data;
  int _pos = 0;

  BinaryReader(this._data);

  int readByte() {
    if (_pos >= _data.length) throw RangeError('BinaryReader: end of buffer');
    return _data[_pos++];
  }

  int readInt32() {
    if (_pos + 4 > _data.length) throw RangeError('BinaryReader: end of buffer');
    final value = ByteData.sublistView(_data, _pos, _pos + 4).getInt32(0, Endian.little);
    _pos += 4;
    return value;
  }

  Uint8List readBytes(int count) {
    if (_pos + count > _data.length) throw RangeError('BinaryReader: end of buffer');
    final slice = _data.sublist(_pos, _pos + count);
    _pos += count;
    return Uint8List.fromList(slice);
  }

  int get position => _pos;
  set position(int p) {
    if (p < 0 || p > _data.length) throw RangeError('BinaryReader: invalid position');
    _pos = p;
  }
}
