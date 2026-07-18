import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/tutor_search_view_model.dart';

class TutorSearchScreen extends ConsumerWidget {
  const TutorSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tutors = ref.watch(tutorSearchViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Find a tutor')),
      body: tutors.when(
        data: (list) => Center(child: Text('${list.length} tutors found')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
