part of 'profile_detail_bloc.dart';

@freezed
class ProfileDetailEvent with _$ProfileDetailEvent {
  const factory ProfileDetailEvent.started() = _Started;
  const factory ProfileDetailEvent.saved({
    String? name,
    String? address,
    Gender? gender,
    String? phone,
  }) = _Saved;
}
