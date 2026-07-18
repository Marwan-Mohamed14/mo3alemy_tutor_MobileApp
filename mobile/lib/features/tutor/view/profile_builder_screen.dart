import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileBuilderScreen extends ConsumerWidget {
  const ProfileBuilderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(profileBuilderViewModelProvider.notifier).save(...) on submit.
    return Scaffold(
      appBar: AppBar(title: const Text('Build your profile')),
      body: const Center(child: Text('TODO: bio, subjects, rates, intro video form')),
    );
  }
}
