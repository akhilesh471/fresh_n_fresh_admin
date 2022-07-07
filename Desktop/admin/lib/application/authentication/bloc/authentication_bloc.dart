import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<_AuthenticateEvent>((event, emit) async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: event.email, password: event.password);
        print('Success');
        onError(error, stackTrace){
          print('not');
        }
    });
  }
}
