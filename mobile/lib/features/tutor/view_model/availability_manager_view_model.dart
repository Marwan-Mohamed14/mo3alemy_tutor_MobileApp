import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/availability_slot_model.dart';
import '../../shared/repository/availability_repository.dart';

class AvailabilityManagerViewModel extends AsyncNotifier<List<AvailabilitySlotModel>> {
  @override
  Future<List<AvailabilitySlotModel>> build() {
    // TODO: resolve the current tutor's id from auth state instead of a placeholder.
    return ref.read(availabilityRepositoryProvider).listSlots('');
  }

  Future<void> addSlot(AvailabilitySlotModel slot) async {
    await ref.read(availabilityRepositoryProvider).addSlot(slot);
    ref.invalidateSelf();
  }

  Future<void> removeSlot(String slotId) async {
    await ref.read(availabilityRepositoryProvider).removeSlot(slotId);
    ref.invalidateSelf();
  }
}

final availabilityManagerViewModelProvider =
    AsyncNotifierProvider<AvailabilityManagerViewModel, List<AvailabilitySlotModel>>(
  AvailabilityManagerViewModel.new,
);
