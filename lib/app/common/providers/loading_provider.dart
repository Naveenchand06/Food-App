import 'package:food_app_ui/app/features/authentication/repo/notifiers/auth_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoadingProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.isLoading;
});
