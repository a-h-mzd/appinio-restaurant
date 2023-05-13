// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:appinio_restaurant/common/injector/modules/firestore.dart'
    as _i12;
import 'package:appinio_restaurant/data/cuisines/api.dart' as _i10;
import 'package:appinio_restaurant/data/tables/api.dart' as _i7;
import 'package:appinio_restaurant/domain/cuisines/repository.dart' as _i9;
import 'package:appinio_restaurant/domain/cuisines/usecase.dart' as _i11;
import 'package:appinio_restaurant/domain/tables/repository.dart' as _i6;
import 'package:appinio_restaurant/domain/tables/usecase.dart' as _i8;
import 'package:appinio_restaurant/l10n/localization.dart' as _i5;
import 'package:appinio_restaurant/presentation/router/router.dart' as _i3;
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final fireStoreModule = _$FireStoreModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => fireStoreModule.firestoreInstance);
    gh.singleton<_i5.LocaleProvider>(_i5.LocaleProvider());
    gh.factory<_i6.TablesRepository>(
        () => _i7.TablesApi(firestore: gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i8.TablesUsecase>(
        () => _i8.TablesUsecase(tablesRepository: gh<_i6.TablesRepository>()));
    gh.factory<_i9.CuisinesRepository>(
        () => _i10.CuisinesApi(firestore: gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i11.CuisinesUsecase>(() =>
        _i11.CuisinesUsecase(cuisinesRepository: gh<_i9.CuisinesRepository>()));
    return this;
  }
}

class _$FireStoreModule extends _i12.FireStoreModule {}
