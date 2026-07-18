import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/tutor_model.dart';

/// Talks to the backend `/tutors` endpoints. No UI concerns.
class TutorsRepository {
  const TutorsRepository();

  Future<List<TutorModel>> search({String? subject, String? curriculum}) async {
    throw UnimplementedError();
  }

  Future<TutorModel> getProfile(String tutorId) async {
    throw UnimplementedError();
  }

  Future<void> updateOwnProfile(TutorModel profile) async {
    throw UnimplementedError();
  }
}

final tutorsRepositoryProvider = Provider<TutorsRepository>((ref) => const TutorsRepository());
