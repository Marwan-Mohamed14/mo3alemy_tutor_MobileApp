import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(authViewModelProvider.notifier).signIn(...) on form submit.
    return Scaffold(
      appBar: AppBar(title: const Text('Log in')),
      body: const Center(child: Text('TODO: login form')),
    );
  }
}
