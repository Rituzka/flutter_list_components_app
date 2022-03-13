import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      //Primary color
      primaryColor: Colors.pink,

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      //Primary color
      primaryColor: Colors.pink,

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));
}
