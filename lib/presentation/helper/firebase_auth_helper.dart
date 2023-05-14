import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebaseAuthHelper {
  bool get isLoggedIn => _uid != null;
  String get uid => _uid!;
  String? _uid = FirebaseAuth.instance.currentUser?.uid;

  Future<String> login() async {
    String? uid;
    while (uid == null) {
      final credential = await FirebaseAuth.instance.signInAnonymously();
      uid = credential.user?.uid;
      if (uid == null) {
        await Future.delayed(const Duration(seconds: 3));
      }
    }
    return _uid = uid;
  }
}

enum LoginStatus {
  loggedOut,
  loggingIn,
  loggedIn;

  bool get isLoggingIn => this == loggingIn;
}
