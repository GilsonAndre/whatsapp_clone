import 'package:flutter/material.dart';

class ThemeApp {
  ThemeData themeLight = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade300,

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    //Login & register Button
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          ContinuousRectangleBorder(),
        ),
      ),
    ),
    iconTheme: IconThemeData(
      size: 70,
      color: Colors.grey,
    ),
    //title page
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 18
      ),
      titleMedium: TextStyle(
        color: Colors.grey,
      ),
      //registerNow
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );
  ThemeData themeDark = ThemeData();
}
