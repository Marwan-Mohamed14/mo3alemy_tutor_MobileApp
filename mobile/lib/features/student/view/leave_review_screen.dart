import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeaveReviewScreen extends ConsumerWidget {
  const LeaveReviewScreen({super.key, required this.reservationId});

  final String reservationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(leaveReviewViewModelProvider.notifier).submit(...) on submit.
    // Only reachable once the reservation has a verified QR check-in.
    return Scaffold(
      appBar: AppBar(title: const Text('Leave a review')),
      body: const Center(child: Text('TODO: rating + comment form')),
    );
  }
}
