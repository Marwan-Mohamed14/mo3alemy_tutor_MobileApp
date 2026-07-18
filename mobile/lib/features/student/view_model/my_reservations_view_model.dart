import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/reservation_model.dart';
import '../../shared/repository/reservations_repository.dart';

class MyReservationsViewModel extends AsyncNotifier<List<ReservationModel>> {
  @override
  Future<List<ReservationModel>> build() {
    return ref.read(reservationsRepositoryProvider).listForCurrentUser();
  }

  Future<void> cancel(String reservationId) async {
    await ref.read(reservationsRepositoryProvider).cancel(reservationId);
    ref.invalidateSelf();
  }
}

final myReservationsViewModelProvider =
    AsyncNotifierProvider<MyReservationsViewModel, List<ReservationModel>>(
  MyReservationsViewModel.new,
);
