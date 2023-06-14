// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/Downlods/downlodsbloc_bloc.dart' as _i9;
import '../../../application/fastLaugh/fastLaugh/fast_laugh_bloc.dart' as _i10;
import '../../../application/home/home_bloc.dart' as _i11;
import '../../../application/hotAndNew/hot_and_new_bloc.dart' as _i12;
import '../../../application/sreach/search/sreach_bloc_bloc.dart' as _i13;
import '../../../infrastructure/download/downloadsRepositiry.dart' as _i4;
import '../../../infrastructure/newAndHot/newAndHotRepo.dart' as _i6;
import '../../../infrastructure/search/searchRepositiry.dart' as _i8;
import '../../downloads/i_DownloadRepo.dart' as _i3;
import '../../newAndHot/iHotAndNewRepo.dart' as _i5;
import '../../search/model/iSearchRepo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.I_DownloadRepo>(() => _i4.DownloadRepo());
  gh.lazySingleton<_i5.I_HotAndNewRepo>(() => _i6.newAndHotRepo());
  gh.lazySingleton<_i7.iSearchRepo>(() => _i8.searchRepo());
  gh.factory<_i9.DownlodsblocBloc>(
      () => _i9.DownlodsblocBloc(get<_i3.I_DownloadRepo>()));
  gh.factory<_i10.FastLaughBloc>(
      () => _i10.FastLaughBloc(get<_i3.I_DownloadRepo>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(get<_i5.I_HotAndNewRepo>()));
  gh.factory<_i12.HotAndNewBloc>(
      () => _i12.HotAndNewBloc(get<_i5.I_HotAndNewRepo>()));
  gh.factory<_i13.SreachBlocBloc>(() =>
      _i13.SreachBlocBloc(get<_i3.I_DownloadRepo>(), get<_i7.iSearchRepo>()));
  return get;
}
