enum UserRole { student, tutor }

class UserModel {
  const UserModel({required this.id, required this.email, required this.role});

  final String id;
  final String email;
  final UserRole role;
}
