import 'package:dartz/dartz.dart';

import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/serach_responce/serach_responce.dart';

abstract class iSearchRepo {
  Future<Either<mainFailure, SerachResponce>> searchMovie(
      {required String mviQurrey});
}
