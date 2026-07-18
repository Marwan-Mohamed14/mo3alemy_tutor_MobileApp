import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/tutor_profile_view_model.dart';

class TutorProfileScreen extends ConsumerWidget {
  const TutorProfileScreen({super.key, required this.tutorId});

  final String tutorId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(tutorProfileViewModelProvider(tutorId));
    return Scaffold(
      appBar: AppBar(title: const Text('Tutor profile')),
      body: profile.when(
        data: (tutor) => Center(child: Text(tutor.bio)),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
