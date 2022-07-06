part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticate({required String email,required String password,}) = _AuthenticateEvent;
}