import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.pink,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
