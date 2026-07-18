import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/reservation_model.dart';
import '../../shared/repository/reservations_repository.dart';

class PendingReservationsViewModel extends AsyncNotifier<List<ReservationModel>> {
  @override
  Future<List<ReservationModel>> build() {
    return ref.read(reservationsRepositoryProvider).listForCurrentUser();
  }

  Future<void> confirm(String reservationId) async {
    await ref.read(reservationsRepositoryProvider).confirm(reservationId);
    ref.invalidateSelf();
  }

  Future<void> decline(String reservationId) async {
    await ref.read(reservationsRepositoryProvider).decline(reservationId);
    ref.invalidateSelf();
  }
}

final pendingReservationsViewModelProvider =
    AsyncNotifierProvider<PendingReservationsViewModel, List<ReservationModel>>(
  PendingReservationsViewModel.new,
);
