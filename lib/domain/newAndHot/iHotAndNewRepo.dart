
import 'package:dartz/dartz.dart';

import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/newAndHot/model/new_and_hot.dart';

abstract class I_HotAndNewRepo{
  Future<Either<mainFailure,NewAndHot>> getHotAndNewMovieData();
  Future<Either<mainFailure,NewAndHot>> getHotAndNewTVData();
}