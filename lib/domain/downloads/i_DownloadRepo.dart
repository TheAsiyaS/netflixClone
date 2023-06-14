import 'package:dartz/dartz.dart';

import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/downloads/model/mdlDownloads.dart';

//Content calling API
abstract class I_DownloadRepo {
  Future<Either<mainFailure, List<DownloadsModl>>> getDownloadImges();
}
