part of 'login_bloc.dart';

abstract class LoginEvent {
  const LoginEvent();
}

class EmailEvent extends LoginEvent {
  final String email;

  EmailEvent(this.email);
}
class PasswordEvent extends LoginEvent {
  final String password;

  PasswordEvent(this.password);
}
