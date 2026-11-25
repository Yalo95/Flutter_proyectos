import 'package:flutter/material.dart';

class AppTheme {
 
  static const Color background = Colors.blue;
  static const Color fontColor = Colors.white;
  static const double buttonspacing = 8;


  static final ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
      //Color primario
        backgroundColor: background,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          foregroundColor: fontColor,
          minimumSize: Size(8, 82),
          textStyle: TextStyle(fontSize: 36)
      )
    )
  );
}