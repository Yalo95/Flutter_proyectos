import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
           //Color primario
        backgroundColor: primary,
        ),

        listTileTheme: ListTileThemeData(
          iconColor: primary //Para que el color de los iconos sean de ese color. En cada clase se le puede poner estilo de cada uno que se quiera.
        )
      );
}