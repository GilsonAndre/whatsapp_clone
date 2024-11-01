import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/resources/strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              
              children: [
                Icon(
                  Icons.message,
                ),
                Text(
                  Strings.welcomeBack,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(width: 5.w,),
                    Text(
                      'Register now!',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
