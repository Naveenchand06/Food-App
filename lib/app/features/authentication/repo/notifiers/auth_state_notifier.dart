import 'package:food_app_ui/app/features/authentication/models/auth_result.dart';
import 'package:food_app_ui/app/features/authentication/models/auth_state.dart';
import 'package:food_app_ui/app/features/authentication/network/authenticator.dart';
import 'package:food_app_ui/app/features/authentication/network/user_info_storage.dart';
import 'package:food_app_ui/utils/typedefs/user_id.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Is Logged in Provider
final isLoggedInProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.result == AuthResult.success;
});

// auth State Provider (Holds current AuthState)
final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((_) {
  return AuthStateNotifier();
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  final _authenticator = const Authenticator();
  final _userInfoStorage = UserInfoStorage();

  AuthStateNotifier() : super(const AuthState.unknown()) {
    if (_authenticator.isAlreadyloggedIn) {
      state = AuthState(
        result: AuthResult.success,
        isLoading: false,
        userId: _authenticator.userId,
      );
    }
  }

  Future<void> logOut() async {
    state = state.copiedWithIsLoading(true);
    await _authenticator.logout();
    state = const AuthState.unknown();
  }

  Future<void> login(String email, String pass) async {
    state = state.copiedWithIsLoading(true);
    final result = await _authenticator.login(email, pass);
    final userId = _authenticator.userId;
    if (result == AuthResult.success && userId != null) {
      // Save user to Users collection
      await saveUserInfo(userId: userId);
    }
    state = AuthState(
      result: result,
      isLoading: false,
      userId: userId,
    );
  }

  Future<void> saveUserInfo({required UserId userId}) =>
      _userInfoStorage.saveUserInfo(
        userId: userId,
        displayName: _authenticator.displayName,
        email: _authenticator.email,
      );
}
