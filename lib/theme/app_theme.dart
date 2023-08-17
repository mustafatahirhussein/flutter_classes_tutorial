import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData myTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 8,
        centerTitle: true,
      ),
      textTheme: TextTheme(

        /* Manual way */

        // titleMedium: TextStyle(
        //   fontSize: 45,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.white,
        //   fontFamily: 'Lato-Regular'
        // ),

        /* Google Font via package */
        titleMedium: GoogleFonts.adamina(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}