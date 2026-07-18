import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/pending_reservations_view_model.dart';

class PendingReservationsScreen extends ConsumerWidget {
  const PendingReservationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservations = ref.watch(pendingReservationsViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Pending reservations')),
      body: reservations.when(
        data: (list) => Center(child: Text('${list.length} pending')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
