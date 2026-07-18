import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/tutor_model.dart';
import '../../shared/repository/tutors_repository.dart';

class TutorProfileViewModel extends FamilyAsyncNotifier<TutorModel, String> {
  @override
  Future<TutorModel> build(String tutorId) {
    return ref.read(tutorsRepositoryProvider).getProfile(tutorId);
  }
}

final tutorProfileViewModelProvider =
    AsyncNotifierProvider.family<TutorProfileViewModel, TutorModel, String>(
  TutorProfileViewModel.new,
);
