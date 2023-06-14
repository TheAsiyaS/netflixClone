import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/core/apiEndPoint.dart';
import 'package:netflix_clone/domain/search/model/iSearchRepo.dart';
import 'package:netflix_clone/serach_responce/serach_responce.dart';


@LazySingleton(as: iSearchRepo)
class searchRepo implements iSearchRepo {
  @override
  Future<Either<mainFailure, SerachResponce>> searchMovie(
      {required String mviQurrey}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(apiEndPoint.Search, queryParameters: {
        'query': mviQurrey,
      });

      // log('RESPONCE DATA--------${response.data}');
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchList = SerachResponce.fromJson(response.data);
        log('search result-----$searchList');

        return right(searchList);
      } else {
        log('server Failure');
        return left(const mainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const mainFailure.clientFailure());
    } 
  }
}
