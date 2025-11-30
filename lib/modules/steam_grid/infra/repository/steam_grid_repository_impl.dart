import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_model.pb.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/repository/steam_grid_repository.dart';
import 'package:http/http.dart' as http;

class SteamGridRepositoryImpl implements SteamGridRepository {
  final GetConfigUsecase _getConfigUsecase;

  SteamGridRepositoryImpl(this._getConfigUsecase);

  @override
  Future<Either<ErrorBase, SteamGridModel>> create(SteamGridModel steamGrid) async {
    if(steamGrid.id.isEmpty) {
      return Future.value(Left(ErrorInvalidArgument('SteamGrid id cannot be empty')));
    }

    var config = await _getConfigUsecase();
    var gridDirectory = '${config.steamPath}/userdata/${config.steamUserId}/config/grid';
    var exists = await Directory(gridDirectory).exists();
    if(!exists) {
      await Directory(gridDirectory).create(recursive: true);
    }

    if(steamGrid.heroUrl.isNotEmpty) {
      var savePath = '$gridDirectory/${steamGrid.id}_hero.jpg';
      var downloadResult = await _downloadImage(steamGrid.heroUrl, savePath);
      if(downloadResult.isLeft()) {
        return Future.value(Left(downloadResult.getLeft().toNullable()!));
      }
    }

    if(steamGrid.logoUrl.isNotEmpty) {
      var savePath = '$gridDirectory/${steamGrid.id}.png';
      var downloadResult = await _downloadImage(steamGrid.logoUrl, savePath);
      if(downloadResult.isLeft()) {
        return Future.value(Left(downloadResult.getLeft().toNullable()!));
      }
    }

    if(steamGrid.posterUrl.isNotEmpty) {
      var savePath = '$gridDirectory/${steamGrid.id}p.jpg';
      var downloadResult = await _downloadImage(steamGrid.posterUrl, savePath);
      if(downloadResult.isLeft()) {
        return Future.value(Left(downloadResult.getLeft().toNullable()!));
      }
    }

    if(steamGrid.iconUrl.isNotEmpty) {
      var savePath = '$gridDirectory/${steamGrid.id}_icon.png';
      var downloadResult = await _downloadImage(steamGrid.iconUrl, savePath);
      if(downloadResult.isLeft()) {
        return Future.value(Left(downloadResult.getLeft().toNullable()!));
      }
    }

    return Future.value(Right(steamGrid));
  }

  @override
  Future<Either<ErrorBase, void>> delete(String id) async {
    var config = await _getConfigUsecase();
    var gridDirectory = '${config.steamPath}/userdata/${config.steamUserId}/config/grid';
    var exists = await Directory(gridDirectory).exists();
    if(!exists) {
      return Future.value(Right(null));
    }

    var heroPath = '$gridDirectory/${id}_hero.jpg';
    var heroFile = File(heroPath);
    if(await heroFile.exists()) {
      await heroFile.delete();
    }

    var logoPath = '$gridDirectory/$id.png';
    var logoFile = File(logoPath);
    if(await logoFile.exists()) {
      await logoFile.delete();
    }

    var posterPath = '$gridDirectory/${id}p.jpg';
    var posterFile = File(posterPath);
    if(await posterFile.exists()) {
      await posterFile.delete();
    }

    var iconPath = '$gridDirectory/${id}_icon.png';
    var iconFile = File(iconPath);
    if(await iconFile.exists()) {
      await iconFile.delete();
    }

    return Future.value(Right(null));
  }

  @override
  Future<Either<ErrorBase, SteamGridModel>> getById(String id) async{
    var config = await _getConfigUsecase();
    var gridDirectory = '${config.steamPath}/userdata/${config.steamUserId}/config/grid';
    var exists = await Directory(gridDirectory).exists();
    if(!exists) {
      return Future.value(Left(ErrorNotFound('SteamGrid with id $id not found')));
    }

    var heroPath = '$gridDirectory/${id}_hero.jpg';
    var logoPath = '$gridDirectory/$id.png';
    var posterPath = '$gridDirectory/${id}p.jpg';
    var iconPath = '$gridDirectory/${id}_icon.png';

    var heroExists = await File(heroPath).exists();
    var logoExists = await File(logoPath).exists();
    var posterExists = await File(posterPath).exists();
    var iconExists = await File(iconPath).exists();

    return Future.value(Right(SteamGridModel(
      id: id,
      heroUrl: heroExists ? 'file://$heroPath' : '',
      logoUrl: logoExists ? 'file://$logoPath' : '',
      posterUrl: posterExists ? 'file://$posterPath' : '',
      iconUrl: iconExists ? 'file://$iconPath' : '',
    )));
  }

  static Future<Either<ErrorBase, void>> _downloadImage(String url, String savePath) async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);
      return Right(null);
    } else {
      return Left(ErrorHttpRequest('Failed to download image from $url: ${response.body}', response.statusCode));
    }
  }
  
  @override
  Future<Either<ErrorBase, List<SteamGridModel>>> searchByGameName(String gameName) async {
    var config = await _getConfigUsecase();
    var steamGridDbApiUrl = 'https://www.steamgriddb.com/api/v2/grids/search';
    var apiKey = config.steamGridDbApiKey;

    if(apiKey.isEmpty) {
      return Future.value(Left(ErrorInvalidArgument('SteamGridDB API key is not configured')));
    }

    var response = await http.get(
      Uri.parse('$steamGridDbApiUrl?term=$gameName'),
      headers: {
        'Authorization': apiKey,
      },
    );

    if (response.statusCode == 200) {
      // Parse the response and create a list of SteamGridModel
      // This is a placeholder implementation; actual parsing logic will depend on the API response format
      List<SteamGridModel> steamGrids = []; // Populate this list based on the response

      return Future.value(Right(steamGrids));
    } else {
      return Future.value(Left(ErrorHttpRequest('Failed to search SteamGrids: ${response.body}', response.statusCode)));
    }
  }
}