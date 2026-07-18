class ReviewModel {
  const ReviewModel({
    required this.id,
    required this.reservationId,
    required this.tutorId,
    required this.studentId,
    required this.rating,
    this.comment,
  });

  final String id;
  final String reservationId;
  final String tutorId;
  final String studentId;
  final int rating;
  final String? comment;
}
