import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_detail_bloc.freezed.dart';
part 'profile_detail_event.dart';
part 'profile_detail_state.dart';

class ProfileDetailBloc extends Bloc<ProfileDetailEvent, ProfileDetailState> {
  ProfileDetailBloc({
    required this.userRepository,
  }) : super(const ProfileDetailState(user: null)) {
    on<_Started>(_onStarted);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ProfileDetailState> emit,
  ) async {
    var user = await userRepository.getProfile();
    emit(ProfileDetailState(user: user));
  }
}
