// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/downloads/downloads_bloc.dart' as _i11;
import '../../application/fast_laugh/fastlaugh_bloc.dart' as _i5;
import '../../application/hot_and_new/hotandnew_bloc.dart' as _i8;
import '../../application/search/search_bloc.dart' as _i12;
import '../../infrastructure/downloads/downloads_repositery.dart' as _i4;
import '../../infrastructure/hotandnew/hotandnew_repositery.dart' as _i7;
import '../../infrastructure/search/search_repositery.dart' as _i10;
import '../downloads/downloads_repo.dart' as _i3;
import '../hotandnew/hotandnew_repo.dart' as _i6;
import '../Search/search_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadsRepo>(() => _i4.DownloadsRepositry());
  gh.factory<_i5.FastlaughBloc>(
      () => _i5.FastlaughBloc(get<_i3.DownloadsRepo>()));
  gh.lazySingleton<_i6.HotandNewRepo>(() => _i7.HotandNewRepositery());
  gh.factory<_i8.HotandnewBloc>(
      () => _i8.HotandnewBloc(get<_i6.HotandNewRepo>()));
  gh.lazySingleton<_i9.SearchRepo>(() => _i10.SearchRepositery());
  gh.factory<_i11.DownloadsBloc>(
      () => _i11.DownloadsBloc(get<_i3.DownloadsRepo>()));
  gh.factory<_i12.SearchBloc>(
      () => _i12.SearchBloc(get<_i3.DownloadsRepo>(), get<_i9.SearchRepo>()));
  return get;
}
