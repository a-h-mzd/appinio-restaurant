part of 'router.dart';

abstract class AppinioRouter {
  late final BuildContext context;

  StackRouter get router => context.router;
}
