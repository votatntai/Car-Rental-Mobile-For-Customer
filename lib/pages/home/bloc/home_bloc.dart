import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.userRepository,
  }) : super(const HomeState.initial()) {
    on<_Started>(_onStarted);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    final user = await userRepository.getProfile();

    if (user == null) {
      emit(const HomeState.error('User is null'));
      return;
    }

    emit(HomeState.success(user: user));
  }
}
