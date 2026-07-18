import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/shared/models/user_model.dart';
import '../features/shared/view/login_screen.dart';
import '../features/shared/view/signup_screen.dart';
import '../features/shared/view_model/auth_view_model.dart';
import '../features/student/view/booking_screen.dart';
import '../features/student/view/leave_review_screen.dart';
import '../features/student/view/my_reservations_screen.dart';
import '../features/student/view/tutor_profile_screen.dart';
import '../features/student/view/tutor_search_screen.dart';
import '../features/tutor/view/availability_manager_screen.dart';
import '../features/tutor/view/earnings_screen.dart';
import '../features/tutor/view/pending_reservations_screen.dart';
import '../features/tutor/view/profile_builder_screen.dart';

/// Router lives behind a provider so a change in [authViewModelProvider]
/// (e.g. sign-in/sign-out) triggers GoRouter to re-evaluate [redirect].
final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authViewModelProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final loggingIn =
          state.matchedLocation == '/login' || state.matchedLocation == '/signup';

      return switch (authState) {
        AuthUnknown() => null,
        AuthUnauthenticated() => loggingIn ? null : '/login',
        AuthAuthenticated(user: final user) => switch (user.role) {
            UserRole.student => (loggingIn || state.matchedLocation.startsWith('/tutor'))
                ? '/student'
                : null,
            UserRole.tutor => (loggingIn || state.matchedLocation.startsWith('/student'))
                ? '/tutor'
                : null,
          },
      };
    },
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(path: '/signup', builder: (context, state) => const SignupScreen()),
      GoRoute(
        path: '/student',
        builder: (context, state) => const TutorSearchScreen(),
        routes: [
          GoRoute(
            path: 'tutor/:tutorId',
            builder: (context, state) =>
                TutorProfileScreen(tutorId: state.pathParameters['tutorId']!),
          ),
          GoRoute(
            path: 'book/:tutorId/:slotId',
            builder: (context, state) => BookingScreen(
              tutorId: state.pathParameters['tutorId']!,
              slotId: state.pathParameters['slotId']!,
            ),
          ),
          GoRoute(
            path: 'reservations',
            builder: (context, state) => const MyReservationsScreen(),
          ),
          GoRoute(
            path: 'review/:reservationId',
            builder: (context, state) =>
                LeaveReviewScreen(reservationId: state.pathParameters['reservationId']!),
          ),
        ],
      ),
      GoRoute(
        path: '/tutor',
        builder: (context, state) => const PendingReservationsScreen(),
        routes: [
          GoRoute(path: 'profile', builder: (context, state) => const ProfileBuilderScreen()),
          GoRoute(
            path: 'availability',
            builder: (context, state) => const AvailabilityManagerScreen(),
          ),
          GoRoute(path: 'earnings', builder: (context, state) => const EarningsScreen()),
        ],
      ),
    ],
  );
});
