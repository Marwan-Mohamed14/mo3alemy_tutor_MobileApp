import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookingScreen extends ConsumerWidget {
  const BookingScreen({super.key, required this.tutorId, required this.slotId});

  final String tutorId;
  final String slotId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(bookingViewModelProvider.notifier).book(...) on submit,
    // with the mandatory pre-session note field.
    return Scaffold(
      appBar: AppBar(title: const Text('Book session')),
      body: const Center(child: Text('TODO: pre-session note form + confirm booking')),
    );
  }
}
