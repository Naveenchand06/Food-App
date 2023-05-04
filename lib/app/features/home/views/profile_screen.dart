import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/app/features/authentication/repo/notifiers/auth_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    User? userData = FirebaseAuth.instance.currentUser;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Email: ${userData?.email ?? '-'}'),
          const SizedBox(height: 20.0),
          Text('UID: ${userData?.uid ?? '-'}'),
          const SizedBox(height: 20.0),
          ElevatedButton.icon(
            onPressed: () => ref.read(authStateProvider.notifier).logOut(),
            icon: const Icon(Icons.logout_rounded),
            label: const Text('Logout'),
          )
        ],
      ),
    );
  }
}
