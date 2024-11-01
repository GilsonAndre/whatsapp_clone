import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ThemeApp {
  ThemeData themeLight = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.grey.shade500,
      secondary: Colors.grey.shade200,
      tertiary: Colors.white,
      inversePrimary: Colors.grey.shade900,
    ),
    scaffoldBackgroundColor: Colors.grey.shade300,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.grey,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),
    ),
    
    iconTheme: IconThemeData(
      size: 70.sp,
      color: Colors.grey,
    )
  );
  ThemeData themeDark = ThemeData();
}
