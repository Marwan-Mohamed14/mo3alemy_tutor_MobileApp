class AvailabilitySlotModel {
  const AvailabilitySlotModel({
    required this.id,
    required this.tutorId,
    required this.subject,
    required this.startsAt,
    required this.endsAt,
    required this.isBooked,
  });

  final String id;
  final String tutorId;
  final String subject;
  final DateTime startsAt;
  final DateTime endsAt;
  final bool isBooked;
}
