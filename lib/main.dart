import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/constants/route_prefixes.dart';
import 'package:flutter_classes_tutorial/navigations/app_routing.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutePrefixes.class5,
      onGenerateRoute: (c) => AppRouting().onGenerateRoutes(c),

      // routes: {
      //   RoutePrefixes.initialRoute : (context) => Screen1(),
      //   RoutePrefixes.screen2 : (context) => Screen2()
      // },
      //home: Screen1(),

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 8,
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
          titleMedium: GoogleFonts.aBeeZee(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

