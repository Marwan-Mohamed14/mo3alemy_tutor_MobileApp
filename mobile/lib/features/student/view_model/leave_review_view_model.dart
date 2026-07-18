import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/repository/reviews_repository.dart';

class LeaveReviewViewModel extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<void> submit({
    required String reservationId,
    required int rating,
    String? comment,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(reviewsRepositoryProvider).create(
            reservationId: reservationId,
            rating: rating,
            comment: comment,
          );
    });
  }
}

final leaveReviewViewModelProvider =
    AsyncNotifierProvider<LeaveReviewViewModel, void>(LeaveReviewViewModel.new);
