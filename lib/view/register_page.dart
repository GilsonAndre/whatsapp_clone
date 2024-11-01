import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/resources/strings.dart';
import 'package:whatsapp_clone/view/login_page.dart';
import 'package:whatsapp_clone/view_model/register_bloc/register_bloc.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: BlocBuilder<RegisterBloc, RegisterState>(
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
                        Strings.creatAccount,
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
                          context.read<RegisterBloc>().add(EmailEvent(value));
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
                          context
                              .read<RegisterBloc>()
                              .add(PasswordEvent(value));
                        },
                      ),

                      SizedBox(height: 10.h),

                      //CONFIRM PASSWORD
                      TextFormField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: Strings.confirmPassword,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Confirm Password can\'t be empty';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          context
                              .read<RegisterBloc>()
                              .add(ConfirmPassordEvent(value));
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
                            Strings.register,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Strings.alreadyHave,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              Strings.loginNow,
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
