import 'dart:async';

import 'package:bloc/bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<ConfirmPassordEvent>(_confirmPasswordEvent);
  }

  FutureOr<void> _emailEvent(
    EmailEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _passwordEvent(
    PasswordEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(password: event.password));
  }

  FutureOr<void> _confirmPasswordEvent(
    ConfirmPassordEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }
}
