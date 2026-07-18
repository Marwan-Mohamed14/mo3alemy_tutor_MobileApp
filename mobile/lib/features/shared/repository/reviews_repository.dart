import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/review_model.dart';

/// Talks to the backend `/reviews` endpoints. No UI concerns.
class ReviewsRepository {
  const ReviewsRepository();

  Future<ReviewModel> create({
    required String reservationId,
    required int rating,
    String? comment,
  }) async {
    throw UnimplementedError();
  }

  Future<List<ReviewModel>> listForTutor(String tutorId) async {
    throw UnimplementedError();
  }
}

final reviewsRepositoryProvider = Provider<ReviewsRepository>((ref) => const ReviewsRepository());
