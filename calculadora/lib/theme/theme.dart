import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
 
  static const Color backgroundGondor = Color(0xFF3C434D);
  static const Color fontColorGondor = Color(0xFFF2F2F2);
  static const double buttonSpacing = 8;
  static const Color negro = Color(0xFF0F1115);
  static const Color plata = Color(0xFFC0C4CC);
  static const Color azul = Color(0xFF1F2A44);
  
  


  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Color(0xFF0F1115),
      appBarTheme: AppBarTheme(
      //Color primario
        backgroundColor: negro,
        foregroundColor: Color(0xFFF2F2F2),
        titleTextStyle: GoogleFonts.cinzel(color: Color(0xFFF2F2F2), fontSize: 32) 
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          side: BorderSide(color:plata, width: 1),
          iconSize: 32,
          backgroundColor: backgroundGondor,
          foregroundColor: fontColorGondor,
          minimumSize: Size(8, 82),
          textStyle: GoogleFonts.cinzel(fontSize: 36)
      )
    )
  );
  static final ButtonStyle operatorStyle = ElevatedButton.styleFrom(
    backgroundColor: azul
    );
  static final ButtonStyle equalStyle = ElevatedButton.styleFrom(
    backgroundColor: plata,
    foregroundColor: negro
  );
}