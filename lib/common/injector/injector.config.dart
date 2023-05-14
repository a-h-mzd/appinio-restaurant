// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:appinio_restaurant/common/injector/modules/firestore.dart'
    as _i28;
import 'package:appinio_restaurant/data/cuisines/api.dart' as _i21;
import 'package:appinio_restaurant/data/reservations/api.dart' as _i12;
import 'package:appinio_restaurant/data/tables/api.dart' as _i15;
import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart' as _i19;
import 'package:appinio_restaurant/domain/cuisines/repository.dart' as _i20;
import 'package:appinio_restaurant/domain/cuisines/usecase.dart' as _i22;
import 'package:appinio_restaurant/domain/reservations/repository.dart' as _i11;
import 'package:appinio_restaurant/domain/reservations/usecase.dart' as _i13;
import 'package:appinio_restaurant/domain/tables/repository.dart' as _i14;
import 'package:appinio_restaurant/domain/tables/usecase.dart' as _i16;
import 'package:appinio_restaurant/l10n/localization.dart' as _i8;
import 'package:appinio_restaurant/presentation/helper/firebase_auth_helper.dart'
    as _i6;
import 'package:appinio_restaurant/presentation/router/router.dart' as _i3;
import 'package:appinio_restaurant/presentation/screens/cuisine/provider.dart'
    as _i17;
import 'package:appinio_restaurant/presentation/screens/cuisine/router.dart'
    as _i4;
import 'package:appinio_restaurant/presentation/screens/cuisines/provider.dart'
    as _i27;
import 'package:appinio_restaurant/presentation/screens/cuisines/router.dart'
    as _i5;
import 'package:appinio_restaurant/presentation/screens/dashboard/provider.dart'
    as _i23;
import 'package:appinio_restaurant/presentation/screens/reservation/provider.dart'
    as _i24;
import 'package:appinio_restaurant/presentation/screens/reservation/router.dart'
    as _i9;
import 'package:appinio_restaurant/presentation/screens/reservation_time/provider.dart'
    as _i25;
import 'package:appinio_restaurant/presentation/screens/reservation_time/router.dart'
    as _i10;
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/widgets.dart' as _i18;
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
    gh.singleton<_i6.FirebaseAuthHelper>(_i6.FirebaseAuthHelper());
    gh.lazySingleton<_i7.FirebaseFirestore>(
        () => fireStoreModule.firestoreInstance);
    gh.singleton<_i8.LocaleProvider>(_i8.LocaleProvider());
    gh.factory<_i9.ReservationRouter>(() => _i9.ReservationRouter());
    gh.factory<_i10.ReservationTimeRouter>(() => _i10.ReservationTimeRouter());
    gh.factory<_i11.ReservationsRepository>(
        () => _i12.ReservationsApi(firestore: gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i13.ReservationsUsecase>(() => _i13.ReservationsUsecase(
        reservationsRepository: gh<_i11.ReservationsRepository>()));
    gh.factory<_i14.TablesRepository>(
        () => _i15.TablesApi(firestore: gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i16.TablesUsecase>(() =>
        _i16.TablesUsecase(tablesRepository: gh<_i14.TablesRepository>()));
    gh.factoryParam<_i17.CuisineProvider, _i18.BuildContext, _i19.CuisineModel>(
        (
      context,
      cuisine,
    ) =>
            _i17.CuisineProvider(
              router: gh<_i4.CuisineRouter>(),
              context: context,
              cuisine: cuisine,
            ));
    gh.factory<_i20.CuisinesRepository>(
        () => _i21.CuisinesApi(firestore: gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i22.CuisinesUsecase>(() => _i22.CuisinesUsecase(
        cuisinesRepository: gh<_i20.CuisinesRepository>()));
    gh.factory<_i23.DashboardProvider>(
        () => _i23.DashboardProvider(authHelper: gh<_i6.FirebaseAuthHelper>()));
    gh.factoryParam<_i24.ReservationProvider, _i18.BuildContext, DateTime>((
      context,
      selectedDate,
    ) =>
        _i24.ReservationProvider(
          router: gh<_i9.ReservationRouter>(),
          context: context,
          selectedDate: selectedDate,
          reservationsUsecase: gh<_i13.ReservationsUsecase>(),
          tablesUsecase: gh<_i16.TablesUsecase>(),
          firebaseAuth: gh<_i6.FirebaseAuthHelper>(),
        ));
    gh.factoryParam<_i25.ReservationTimeProvider, _i26.BuildContext, dynamic>((
      context,
      _,
    ) =>
        _i25.ReservationTimeProvider(
          router: gh<_i10.ReservationTimeRouter>(),
          context: context,
        ));
    gh.factoryParam<_i27.CuisinesProvider, _i18.BuildContext, dynamic>((
      context,
      _,
    ) =>
        _i27.CuisinesProvider(
          router: gh<_i5.CuisinesRouter>(),
          cuisinesUsecase: gh<_i22.CuisinesUsecase>(),
          context: context,
        ));
    return this;
  }
}

class _$FireStoreModule extends _i28.FireStoreModule {}
