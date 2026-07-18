import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(authViewModelProvider.notifier).signUp(...) on form submit,
    // with a role picker (student vs tutor).
    return Scaffold(
      appBar: AppBar(title: const Text('Sign up')),
      body: const Center(child: Text('TODO: signup form')),
    );
  }
}
