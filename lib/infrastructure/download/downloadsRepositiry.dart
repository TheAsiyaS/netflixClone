import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/core/apiEndPoint.dart';
import 'package:netflix_clone/domain/downloads/i_DownloadRepo.dart';
import 'package:netflix_clone/domain/downloads/model/mdlDownloads.dart';

/*
Infrastructure : is the backend of the app
 */

@LazySingleton(as: I_DownloadRepo)
class DownloadRepo implements I_DownloadRepo {
  @override
  Future<Either<mainFailure, List<DownloadsModl>>> getDownloadImges() async {
    try {  
      final Response response =
          await Dio(BaseOptions()).get(apiEndPoint.download);
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return DownloadsModl.fromJson(e);
        }).toList(); 
//print(downloadsList);
        return right(downloadsList);
      } else {
        print('server Failure');
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString()); 
      return left(const mainFailure.clientFailure());
    }
  }
  

}

///2yGQciaRwKjg8N5iJ7997VrU3mB.jpg
