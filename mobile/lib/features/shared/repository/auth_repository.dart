import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_model.dart';

/// Talks to Supabase Auth on behalf of AuthViewModel. No UI concerns.
///
/// import 'package:mo3alemy/core/supabase/supabase_client.dart';
class AuthRepository {
  const AuthRepository();

  Future<UserModel?> getCurrentUser() async {
    throw UnimplementedError();
  }

  Future<UserModel> signIn({required String email, required String password}) async {
    throw UnimplementedError();
  }

  Future<UserModel> signUp({
    required String email,
    required String password,
    required UserRole role,
  }) async {
    throw UnimplementedError();
  }

  Future<void> signOut() async {
    throw UnimplementedError();
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) => const AuthRepository());
