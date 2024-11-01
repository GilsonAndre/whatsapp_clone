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
                SizedBox(height: 100.h),
                Icon(Icons.message),
                SizedBox(height: 30.h),
                Text(
                  Strings.welcomeBack,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: Strings.email,
                  ),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: Strings.password,
                  ),
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50.h,
                  child: OutlinedButton(
                    onPressed: () {},
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
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      Strings.registerNow,
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
