import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/availability_slot_model.dart';

/// Talks to the backend `/availability` endpoints. No UI concerns.
class AvailabilityRepository {
  const AvailabilityRepository();

  Future<List<AvailabilitySlotModel>> listSlots(String tutorId) async {
    throw UnimplementedError();
  }

  Future<void> addSlot(AvailabilitySlotModel slot) async {
    throw UnimplementedError();
  }

  Future<void> removeSlot(String slotId) async {
    throw UnimplementedError();
  }
}

final availabilityRepositoryProvider =
    Provider<AvailabilityRepository>((ref) => const AvailabilityRepository());
