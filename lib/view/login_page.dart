import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/resources/strings.dart';
import 'package:whatsapp_clone/view/register_page.dart';
import 'package:whatsapp_clone/view_model/login_bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 100.h),
                      Icon(Icons.message),
                      SizedBox(height: 30.h),
                      Text(
                        Strings.welcomeBack,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(height: 20.h),

                      //EMAIL
                      TextFormField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: Strings.email,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email can\'t be empty';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          context.read<LoginBloc>().add(EmailEvent(value));

                        },
                      ),
                      SizedBox(height: 10.h),

                      //PASSWORD
                      TextFormField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: Strings.password,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password can\'t be empty';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          context.read<LoginBloc>().add(PasswordEvent(value));
                        },
                      ),
                      SizedBox(height: 25.h),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50.h,
                        child: OutlinedButton(
                          onPressed: () {
                            _formKey.currentState!.validate();
                          },
                          child: Text(
                            Strings.login,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Strings.notMember,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              );
                            },
                            child: Text(
                              Strings.registerNow,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
