// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:appinio_restaurant/common/injector/modules/firestore.dart'
    as _i18;
import 'package:appinio_restaurant/data/cuisines/api.dart' as _i15;
import 'package:appinio_restaurant/data/tables/api.dart' as _i9;
import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart' as _i13;
import 'package:appinio_restaurant/domain/cuisines/repository.dart' as _i14;
import 'package:appinio_restaurant/domain/cuisines/usecase.dart' as _i16;
import 'package:appinio_restaurant/domain/tables/repository.dart' as _i8;
import 'package:appinio_restaurant/domain/tables/usecase.dart' as _i10;
import 'package:appinio_restaurant/l10n/localization.dart' as _i7;
import 'package:appinio_restaurant/presentation/router/router.dart' as _i3;
import 'package:appinio_restaurant/presentation/screens/cuisine/provider.dart'
    as _i11;
import 'package:appinio_restaurant/presentation/screens/cuisine/router.dart'
    as _i4;
import 'package:appinio_restaurant/presentation/screens/cuisines/provider.dart'
    as _i17;
import 'package:appinio_restaurant/presentation/screens/cuisines/router.dart'
    as _i5;
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:flutter/widgets.dart' as _i12;
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
    gh.factory<_i4.CuisineRouter>(() => _i4.CuisineRouter());
    gh.factory<_i5.CuisinesRouter>(() => _i5.CuisinesRouter());
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => fireStoreModule.firestoreInstance);
    gh.singleton<_i7.LocaleProvider>(_i7.LocaleProvider());
    gh.factory<_i8.TablesRepository>(
        () => _i9.TablesApi(firestore: gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i10.TablesUsecase>(
        () => _i10.TablesUsecase(tablesRepository: gh<_i8.TablesRepository>()));
    gh.factoryParam<_i11.CuisineProvider, _i12.BuildContext, _i13.CuisineModel>(
        (
      context,
      cuisine,
    ) =>
            _i11.CuisineProvider(
              router: gh<_i4.CuisineRouter>(),
              context: context,
              cuisine: cuisine,
            ));
    gh.factory<_i14.CuisinesRepository>(
        () => _i15.CuisinesApi(firestore: gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i16.CuisinesUsecase>(() => _i16.CuisinesUsecase(
        cuisinesRepository: gh<_i14.CuisinesRepository>()));
    gh.factoryParam<_i17.CuisinesProvider, _i12.BuildContext, dynamic>((
      context,
      _,
    ) =>
        _i17.CuisinesProvider(
          router: gh<_i5.CuisinesRouter>(),
          cuisinesUsecase: gh<_i16.CuisinesUsecase>(),
          context: context,
        ));
    return this;
  }
}

class _$FireStoreModule extends _i18.FireStoreModule {}
