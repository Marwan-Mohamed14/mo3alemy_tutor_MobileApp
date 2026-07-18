import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/payment_model.dart';

/// Talks to the backend `/payments` endpoints. No UI concerns.
class PaymentsRepository {
  const PaymentsRepository();

  Future<PaymentModel> charge({
    required String reservationId,
    required PaymentProvider provider,
  }) async {
    throw UnimplementedError();
  }

  Future<List<PaymentModel>> myEarnings() async {
    throw UnimplementedError();
  }
}

final paymentsRepositoryProvider = Provider<PaymentsRepository>((ref) => const PaymentsRepository());
