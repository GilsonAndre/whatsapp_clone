import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/resources/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.homePage),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.login,
              size: 30.sp,
            ),
          ),
        ],
      ),
    );
  }
}
