import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/tutor_model.dart';
import '../../shared/repository/tutors_repository.dart';

class ProfileBuilderViewModel extends AsyncNotifier<TutorModel?> {
  @override
  Future<TutorModel?> build() async => null; // TODO: load own profile if it exists

  Future<void> save(TutorModel profile) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(tutorsRepositoryProvider).updateOwnProfile(profile);
      return profile;
    });
  }
}

final profileBuilderViewModelProvider =
    AsyncNotifierProvider<ProfileBuilderViewModel, TutorModel?>(ProfileBuilderViewModel.new);
