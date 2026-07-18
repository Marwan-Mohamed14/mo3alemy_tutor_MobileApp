enum ReservationStatus { pending, confirmed, declined, cancelled, completed }

class ReservationModel {
  const ReservationModel({
    required this.id,
    required this.studentId,
    required this.tutorId,
    required this.slotId,
    required this.status,
    required this.preSessionNote,
    this.checkedInAt,
  });

  final String id;
  final String studentId;
  final String tutorId;
  final String slotId;
  final ReservationStatus status;
  final String preSessionNote;
  final DateTime? checkedInAt;
}
