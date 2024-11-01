import 'dart:async';

import 'package:bloc/bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  FutureOr<void> _emailEvent(
    EmailEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _passwordEvent(
    PasswordEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(password: event.password));
  }
}
