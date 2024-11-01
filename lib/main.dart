import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/resources/strings.dart';
import 'package:whatsapp_clone/resources/theme.dart';
import 'package:whatsapp_clone/view/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeApp themeApp = ThemeApp();
    return ScreenUtilInit(
      child: MaterialApp(
        title: Strings.appName,
        theme: themeApp.themeLight,
        home: LoginPage(),
      ),
    );
  }
}
