import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/reservation_model.dart';

/// Talks to the backend `/reservations` endpoints. No UI concerns.
class ReservationsRepository {
  const ReservationsRepository();

  Future<ReservationModel> book({
    required String tutorId,
    required String slotId,
    required String preSessionNote,
  }) async {
    throw UnimplementedError();
  }

  Future<List<ReservationModel>> listForCurrentUser() async {
    throw UnimplementedError();
  }

  Future<void> cancel(String reservationId) async {
    throw UnimplementedError();
  }

  Future<void> confirm(String reservationId) async {
    throw UnimplementedError();
  }

  Future<void> decline(String reservationId) async {
    throw UnimplementedError();
  }

  Future<void> checkIn(String reservationId, {required String qrToken}) async {
    throw UnimplementedError();
  }
}

final reservationsRepositoryProvider =
    Provider<ReservationsRepository>((ref) => const ReservationsRepository());
