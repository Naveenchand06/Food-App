import 'package:flutter/material.dart';
import 'package:food_app_ui/app/common/providers/loading_provider.dart';
import 'package:food_app_ui/app/features/authentication/repo/notifiers/auth_state_notifier.dart';
import 'package:food_app_ui/app/features/authentication/views/auth_wrapper.dart';
import 'package:food_app_ui/app/features/home/views/home_screen.dart';
import 'package:food_app_ui/app/loading/loading_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<bool>(
      isLoadingProvider,
      (previous, isLoading) {
        if (isLoading == true) {
          LoadingScreen.instance().show(
            context: context,
          );
        } else {
          LoadingScreen.instance().hide();
        }
      },
    );
    final isLoggedIn = ref.watch(isLoggedInProvider);

    return SafeArea(
      child: isLoggedIn ? const HomeScreen() : const AuthWrapper(),
    );
  }
}
