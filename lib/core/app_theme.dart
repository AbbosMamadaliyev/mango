import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    // textTheme: ,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          return Colors.black;
        },
      ),
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Color(0xffF9F9F9),
  );
  //d

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      // foregroundColor: Color(0xff282E33),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color(0xff282E33),
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    hintColor: Color(0xff18191D),
    scaffoldBackgroundColor: Color(0xff18191D),
  );
}
