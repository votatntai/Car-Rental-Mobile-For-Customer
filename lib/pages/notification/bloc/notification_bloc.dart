import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/notification.dart';
import 'package:car_rental_for_customer/models/scroll_pagination.dart';
import 'package:car_rental_for_customer/pages/notification/bloc/mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(const NotificationState()) {
    on<_Started>(_onStared);
    on<_PageRequested>(_onPageRequested);
  }
  final pageSize = 10;
  FutureOr<void> _onStared(
    _Started event,
    Emitter<NotificationState> emit,
  ) async {}

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<NotificationState> emit,
  ) async {
    final page = (event.pageKey / pageSize).floor() + 1;

    final notifications =
        notificationMock.skip(pageSize * (page - 1)).take(pageSize);

    final lastListingState =
        event.pageKey == 0 || state.scrollPagination == null
            ? ScrollPagination<Notification>(
                nextPageKey: 0,
                error: null,
                itemList: [],
              )
            : state.scrollPagination!;

    emit(state.copyWith(
      scrollPagination: _calculateScrollPagination(
        lastListingState,
        notifications,
        event.pageKey,
      ),
    ));
  }

  ScrollPagination<Notification> _calculateScrollPagination(
    ScrollPagination<Notification> lastListingState,
    Iterable<Notification> notifications,
    int pageKey,
  ) {
    final isLastPage = pageKey >= 20;

    final nextPageKey = isLastPage ? null : pageKey + notifications.length;

    final itemList = [...?lastListingState.itemList, ...notifications];

    return ScrollPagination(
      itemList: itemList,
      nextPageKey: nextPageKey,
      error: null,
    );
  }
}
