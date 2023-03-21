import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/scroll_pagination.dart';
import 'package:car_rental_for_customer/models/transaction.dart';
import 'package:car_rental_for_customer/pages/wallet/transaction_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history_event.dart';

part 'transaction_history_state.dart';

part 'transaction_history_bloc.freezed.dart';

class TransactionHistoryBloc
    extends Bloc<TransactionHistoryEvent, TransactionHistoryState> {
  TransactionHistoryBloc() : super(const TransactionHistoryState()) {
    on<_Started>(_onStared);
    on<_PageRequested>(_onPageRequested);
  }

  final pageSize = 10;

  FutureOr<void> _onStared(
    _Started event,
    Emitter<TransactionHistoryState> emit,
  ) async {}

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<TransactionHistoryState> emit,
  ) async {
    final page = (event.pageKey / pageSize).floor() + 1;

    final transaction =
        transactionMock.skip(pageSize * (page - 1)).take(pageSize);

    final lastListingState =
        event.pageKey == 0 || state.scrollPagination == null
            ? ScrollPagination<Transaction>(
                nextPageKey: 0,
                error: null,
                itemList: [],
              )
            : state.scrollPagination!;

    emit(state.copyWith(
      scrollPagination: _calculateScrollPagination(
        lastListingState,
        transaction,
        event.pageKey,
      ),
    ));
  }

  ScrollPagination<Transaction> _calculateScrollPagination(
    ScrollPagination<Transaction> lastListingState,
    Iterable<Transaction> transactions,
    int pageKey,
  ) {
    final isLastPage = pageKey >= 20;

    final nextPageKey = isLastPage ? null : pageKey + transactionMock.length;

    final itemList = [...?lastListingState.itemList, ...transactionMock];

    return ScrollPagination(
      itemList: itemList,
      nextPageKey: nextPageKey,
      error: null,
    );
  }
}
