import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
 
  static const Color backgroundGondor = Color(0xFF3C434D);
  static const Color fontColorGondor = Color(0xFFF2F2F2);
  static const double buttonSpacing = 8;
  static const Color black = Color(0xFF0F1115);
  static const Color silver = Color(0xFFC0C4CC);
  static const Color blue = Color(0xFF1F2A44);
  
  


  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Color(0xFF0F1115),
      appBarTheme: AppBarTheme(
      //Color primario
        backgroundColor: black,
        foregroundColor: Color(0xFFF2F2F2),
        titleTextStyle: GoogleFonts.cinzel(color: Color(0xFFF2F2F2), fontSize: 32) 
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          side: BorderSide(color:silver, width: 1),
          iconSize: 32,
          backgroundColor: backgroundGondor,
          foregroundColor: fontColorGondor,
          minimumSize: Size(8, 82),
          textStyle: GoogleFonts.cinzel(fontSize: 36)
      )
    )
  );
  static final ButtonStyle operatorStyle = ElevatedButton.styleFrom(
    backgroundColor: blue
    );
  static final ButtonStyle equalStyle = ElevatedButton.styleFrom(
    backgroundColor: silver,
    foregroundColor: black
  );
}