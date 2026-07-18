import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/availability_manager_view_model.dart';

class AvailabilityManagerScreen extends ConsumerWidget {
  const AvailabilityManagerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slots = ref.watch(availabilityManagerViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Manage availability')),
      body: slots.when(
        data: (list) => Center(child: Text('${list.length} slots')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
