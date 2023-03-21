import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/transaction.dart';
import 'package:car_rental_for_customer/pages/wallet/transaction_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail_event.dart';
part 'transaction_detail_state.dart';
part 'transaction_detail_bloc.freezed.dart';

class TransactionDetailBloc
    extends Bloc<TransactionDetailEvent, TransactionDetailState> {
  TransactionDetailBloc() : super(const TransactionDetailState()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<TransactionDetailState> emit,
  ) async {
    final transactions = transactionMock.where(
      (element) => element.id == event.transactionId,
    );

    if (transactions.isNotEmpty) {
      emit(state.copyWith(transaction: transactions.first));
      return;
    }
  }
}
