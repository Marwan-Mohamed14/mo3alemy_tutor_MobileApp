import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/tutor_model.dart';
import '../../shared/repository/tutors_repository.dart';

class TutorSearchViewModel extends AsyncNotifier<List<TutorModel>> {
  @override
  Future<List<TutorModel>> build() {
    return ref.read(tutorsRepositoryProvider).search();
  }

  Future<void> search({String? subject, String? curriculum}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(tutorsRepositoryProvider).search(subject: subject, curriculum: curriculum),
    );
  }
}

final tutorSearchViewModelProvider =
    AsyncNotifierProvider<TutorSearchViewModel, List<TutorModel>>(TutorSearchViewModel.new);
