import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_app_ui/app/features/authentication/models/auth_result.dart';
import 'package:food_app_ui/utils/typedefs/user_id.dart';

class Authenticator {
  const Authenticator();

  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;
  bool get isAlreadyloggedIn => userId != null;
  String get displayName =>
      FirebaseAuth.instance.currentUser?.displayName ?? '';
  String? get email => FirebaseAuth.instance.currentUser?.email;

  /// Logout user
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  /// Login
  Future<AuthResult> login(String email, String pass) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
      return AuthResult.success;
    } catch (e) {
      return AuthResult.failure;
    }
  }

  /// Register
  Future<AuthResult> register(String email, String pass) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
      return AuthResult.success;
    } catch (e) {
      return AuthResult.failure;
    }
  }
}
