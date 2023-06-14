//infastructure
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/core/apiEndPoint.dart';
import 'package:netflix_clone/domain/downloads/model/mdlDownloads.dart';

//Either<mainFailure,List<DownloadsModl>>
class ClassName {
  Future<Either<mainFailure, List<DownloadsModl>>> dataChecking() async {
    final Response responce =
        await Dio(BaseOptions()).get(apiEndPoint.download);

    if (responce.statusCode == 200) {
      final downloadsList = (responce.data['results'] as List).map((e) {
        return DownloadsModl.fromJson(e);
      }).toList();
      return right(downloadsList);
    } else {
      return left(mainFailure.clientFailure());
    }
  }
}
