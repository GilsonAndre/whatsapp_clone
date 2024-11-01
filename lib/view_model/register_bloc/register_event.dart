part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();
}

class EmailEvent extends RegisterEvent {
  final String email;

  const EmailEvent(this.email);
}

class PasswordEvent extends RegisterEvent {
  final String password;

  const PasswordEvent(this.password);
}

class ConfirmPassordEvent extends RegisterEvent {
  final String confirmPassword;

  const ConfirmPassordEvent(this.confirmPassword);
}
