import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/models/payment_model.dart';
import '../../shared/repository/payments_repository.dart';

class EarningsViewModel extends AsyncNotifier<List<PaymentModel>> {
  @override
  Future<List<PaymentModel>> build() {
    return ref.read(paymentsRepositoryProvider).myEarnings();
  }
}

final earningsViewModelProvider =
    AsyncNotifierProvider<EarningsViewModel, List<PaymentModel>>(EarningsViewModel.new);
