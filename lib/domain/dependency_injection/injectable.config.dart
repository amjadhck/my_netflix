// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/downloads/downloads_bloc.dart' as _i14;
import '../../application/fast_laugh/fastlaugh_bloc.dart' as _i5;
import '../../application/homescreen/homescreen_bloc.dart' as _i8;
import '../../application/hot_and_new/hotandnew_bloc.dart' as _i11;
import '../../application/search/search_bloc.dart' as _i15;
import '../../infrastructure/downloads/downloads_repositery.dart' as _i4;
import '../../infrastructure/home_screen/homescreen_repositery.dart' as _i7;
import '../../infrastructure/hotandnew/hotandnew_repositery.dart' as _i10;
import '../../infrastructure/search/search_repositery.dart' as _i13;
import '../downloads/downloads_repo.dart' as _i3;
import '../home_screen/home_repo.dart' as _i6;
import '../hotandnew/hotandnew_repo.dart' as _i9;
import '../Search/search_repo.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadsRepo>(() => _i4.DownloadsRepositry());
  gh.factory<_i5.FastlaughBloc>(
      () => _i5.FastlaughBloc(get<_i3.DownloadsRepo>()));
  gh.lazySingleton<_i6.HomeScreenRepo>(() => _i7.HomeScreenRepositery());
  gh.factory<_i8.HomescreenBloc>(
      () => _i8.HomescreenBloc(get<_i6.HomeScreenRepo>()));
  gh.lazySingleton<_i9.HotandNewRepo>(() => _i10.HotandNewRepositery());
  gh.factory<_i11.HotandnewBloc>(
      () => _i11.HotandnewBloc(get<_i9.HotandNewRepo>()));
  gh.lazySingleton<_i12.SearchRepo>(() => _i13.SearchRepositery());
  gh.factory<_i14.DownloadsBloc>(
      () => _i14.DownloadsBloc(get<_i3.DownloadsRepo>()));
  gh.factory<_i15.SearchBloc>(
      () => _i15.SearchBloc(get<_i3.DownloadsRepo>(), get<_i12.SearchRepo>()));
  return get;
}
