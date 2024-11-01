import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/view_model/login_bloc/login_bloc.dart';

class AuthRepository {
  final BuildContext context;
  AuthRepository(this.context);
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login() async {
    final state = context.read<LoginBloc>().state;
    final String email = state.email;
    final String password = state.password;

    try {
      if (email.isEmpty) {
        print('EMAIL IS EMPTY');
      }
      if (password.isEmpty) {
        print('PASSWORD IS EMPTY');
      }

      try {
        final UserCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        if (UserCredential.user == null) {
          print('USER NOT EXIST');
        }
        if (UserCredential.user != null) {
          print('GOOD PATH');
        }
      } on FirebaseAuthException catch (e) {
        print(e.code);
      }
    } catch (e) {
      print(e);
    }
  }
}
