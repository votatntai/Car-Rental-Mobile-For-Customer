import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/transaction.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/pages/wallet/transaction_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const WalletState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<WalletState> emit,
  ) async {
    emit(const WalletState.loading());
    emit(WalletState.success(
      user: event.user,
      transactions: transactionMock,
      balance: 100000,
    ));
  }
}
