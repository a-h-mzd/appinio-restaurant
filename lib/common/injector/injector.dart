import 'package:appinio_restaurant/common/injector/injector.config.dart';
import 'package:appinio_restaurant/presentation/common/appinio_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;

@InjectableInit(
  throwOnMissingDependencies: true,
)
void configureDependencies() {
  _getIt.init();
}

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    _getIt.get<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );

Future<T> injectAsync<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    _getIt.getAsync<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );

T injectProvider<T extends AppinioProvider>(
  BuildContext context, {
  String? instanceName,
  dynamic param,
}) =>
    inject<T>(
      instanceName: instanceName,
      param1: context,
      param2: param,
    );

extension InjectProvider on T Function<T extends AppinioProvider>(
  BuildContext context, {
  String? instanceName,
  dynamic param,
}) {
  T Function<T extends AppinioProvider>(BuildContext context) using(
    dynamic param, {
    String? instanceName,
  }) =>
      <T extends AppinioProvider>(BuildContext c) => this(
            c,
            instanceName: instanceName,
            param: param,
          );
}
