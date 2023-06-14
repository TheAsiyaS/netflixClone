import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/core/apiEndPoint.dart';
import 'package:netflix_clone/domain/newAndHot/iHotAndNewRepo.dart';
import 'package:netflix_clone/domain/newAndHot/model/new_and_hot.dart';



@LazySingleton(as: I_HotAndNewRepo)
class newAndHotRepo implements I_HotAndNewRepo {
  @override
  Future<Either<mainFailure, NewAndHot>> getHotAndNewMovieData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        apiEndPoint.newAndHotMovie,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final newhotList = NewAndHot.fromJson(response.data);
        print('search result-----$newhotList');
        return right(newhotList);
      } else {
        print('server Failure');
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const mainFailure.clientFailure());
    }
  }

  @override
  Future<Either<mainFailure, NewAndHot>> getHotAndNewTVData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        apiEndPoint.newAndHotTV,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchList = NewAndHot.fromJson(response.data);

        return right(searchList);
      } else {
        print('server Failure');
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const mainFailure.clientFailure());
    }
  }
}
