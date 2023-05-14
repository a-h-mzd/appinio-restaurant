import 'package:appinio_restaurant/presentation/helper/firebase_auth_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class DashboardProvider extends ChangeNotifier {
  final FirebaseAuthHelper authHelper;

  DashboardProvider({
    required this.authHelper,
  }) : _loginStatus = authHelper.isLoggedIn
            ? LoginStatus.loggedIn
            : LoginStatus.loggedOut {
    if (!authHelper.isLoggedIn) {
      login();
    }
  }

  LoginStatus get loginStatus => _loginStatus;
  LoginStatus _loginStatus;

  Future<void> login() async {
    if (_loginStatus.isLoggingIn) {
      return;
    }

    _loginStatus = LoginStatus.loggingIn;
    notifyListeners();

    try {
      await authHelper.login();
      _loginStatus = LoginStatus.loggedIn;
    } catch (e) {
      _loginStatus = LoginStatus.loggedOut;
    }
    notifyListeners();
  }
}
