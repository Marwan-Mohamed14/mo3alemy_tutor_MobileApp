import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/my_reservations_view_model.dart';

class MyReservationsScreen extends ConsumerWidget {
  const MyReservationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservations = ref.watch(myReservationsViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('My reservations')),
      body: reservations.when(
        data: (list) => Center(child: Text('${list.length} reservations')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
