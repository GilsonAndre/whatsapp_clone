import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/components/toast.dart';
import 'package:whatsapp_clone/view/home_page.dart';
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
        toastInfo(msg: 'Email can\'t be empty');
      }
      if (password.isEmpty) {
        toastInfo(msg: 'password can\'t be empty');
      }
      try {
        final userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        if (userCredential.user != null) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
            (Route<dynamic> route) => false,
          );
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'invalid-email') {
          toastInfo(msg: 'Email invalidt');
        } else if (e.code == 'user-disabled') {
          toastInfo(msg: 'User disabled');
        } else if (e.code == 'user-not-found') {
          toastInfo(msg: 'User not found');
        } else if (e.code == 'wrong-password') {
          toastInfo(msg: 'Password is wrong');
        } else if (e.code == 'invalid-credential') {
          toastInfo(msg: 'Credential invalid');
        }
      }
    } catch (e) {
      print(e);
    }
  }
}

// AlertDialog(title: Text('We sent e email verification, please take a look'),);
          //toastInfo(msg: 'We sent e email verification, please take a look');