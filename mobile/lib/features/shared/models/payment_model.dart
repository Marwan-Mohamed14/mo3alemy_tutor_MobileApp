enum PaymentProvider { instapay, fawry, creditPack }

enum PaymentStatus { pending, paid, failed }

class PaymentModel {
  const PaymentModel({
    required this.id,
    required this.reservationId,
    required this.amount,
    required this.provider,
    required this.status,
  });

  final String id;
  final String reservationId;
  final double amount;
  final PaymentProvider provider;
  final PaymentStatus status;
}
