import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_model.dart';
import '../repository/auth_repository.dart';

sealed class AuthState {
  const AuthState();
}

class AuthUnknown extends AuthState {
  const AuthUnknown();
}

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}

class AuthAuthenticated extends AuthState {
  const AuthAuthenticated(this.user);

  final UserModel user;
}

/// Holds the current session and exposes it to the View and to
/// [appRouterProvider]'s redirect logic. Calls into [AuthRepository];
/// no Supabase calls happen here directly.
///
/// TODO: on app start, check for an existing Supabase session instead of
/// leaving state at [AuthUnknown] until the user submits the login form.
class AuthViewModel extends Notifier<AuthState> {
  @override
  AuthState build() => const AuthUnknown();

  Future<void> signIn({required String email, required String password}) async {
    final user = await ref.read(authRepositoryProvider).signIn(email: email, password: password);
    state = AuthAuthenticated(user);
  }

  Future<void> signUp({
    required String email,
    required String password,
    required UserRole role,
  }) async {
    final user = await ref
        .read(authRepositoryProvider)
        .signUp(email: email, password: password, role: role);
    state = AuthAuthenticated(user);
  }

  Future<void> signOut() async {
    await ref.read(authRepositoryProvider).signOut();
    state = const AuthUnauthenticated();
  }
}

final authViewModelProvider = NotifierProvider<AuthViewModel, AuthState>(AuthViewModel.new);
