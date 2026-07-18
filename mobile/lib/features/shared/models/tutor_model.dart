class TutorModel {
  const TutorModel({
    required this.id,
    required this.userId,
    required this.bio,
    required this.subjects,
    required this.curriculum,
    required this.hourlyRate,
    this.introVideoUrl,
    this.verificationBadges = const [],
    this.averageRating,
  });

  final String id;
  final String userId;
  final String bio;
  final List<String> subjects;
  final String curriculum;
  final double hourlyRate;
  final String? introVideoUrl;
  final List<String> verificationBadges;
  final double? averageRating;
}
