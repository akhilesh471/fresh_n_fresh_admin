part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({required String email,required String password}) = _AuthenticatonState;
 factory AuthenticationState.initial(){
  return AuthenticationState(email: '', password:'');
 }
 }
