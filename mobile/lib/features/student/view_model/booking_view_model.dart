import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/repository/reservations_repository.dart';

class BookingViewModel extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<void> book({
    required String tutorId,
    required String slotId,
    required String preSessionNote,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(reservationsRepositoryProvider).book(
            tutorId: tutorId,
            slotId: slotId,
            preSessionNote: preSessionNote,
          );
    });
  }
}

final bookingViewModelProvider = AsyncNotifierProvider<BookingViewModel, void>(BookingViewModel.new);
