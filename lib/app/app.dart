import 'package:flutter/material.dart';
import 'package:food_app_ui/app/common/loading_provider.dart';
import 'package:food_app_ui/app/features/authentication/repo/notifiers/auth_state_notifier.dart';
import 'package:food_app_ui/app/features/authentication/views/login_screen.dart';
import 'package:food_app_ui/app/features/home/views/home_screen.dart';
import 'package:food_app_ui/app/loading/loading_screen.dart';
import 'dart:developer' as devtools;
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension Log on Object {
  void log() => devtools.log(toString());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instantgram',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        indicatorColor: Colors.blueGrey,
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Consumer(
        builder: (_, ref, child) {
          // Displaying loading screen
          ref.listen<bool>(
            isLoadingProvider,
            (previous, isLoading) {
              if (isLoading == true) {
                LoadingScreen.instance().show(context: _);
              } else {
                LoadingScreen.instance().hide();
              }
            },
          );

          final isLoggedIn = ref.watch(isLoggedInProvider);
          if (isLoggedIn) {
            return const HomeScreen();
          } else {
            return LoginScreen(
              emailController: TextEditingController(),
              passwordController: TextEditingController(),
            );
          }
        },
      ),
    );
  }
}
