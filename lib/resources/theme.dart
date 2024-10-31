import 'package:flutter/material.dart';

class Theme {
  ThemeData themeLight = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.grey.shade500,
      secondary: Colors.grey.shade200,
      tertiary: Colors.white,
      inversePrimary: Colors.grey.shade900,
    ),
    scaffoldBackgroundColor: Colors.grey.shade300,
  );
  ThemeData themeDark = ThemeData();
}
