import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/constants/route_prefixes.dart';
import 'package:flutter_classes_tutorial/navigations/app_routing.dart';
import 'package:flutter_classes_tutorial/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutePrefixes.class8,
      onGenerateRoute: (c) => AppRouting().onGenerateRoutes(c),

      // routes: {
      //   RoutePrefixes.initialRoute : (context) => Screen1(),
      //   RoutePrefixes.screen2 : (context) => Screen2()
      // },
      //home: Screen1(),

      theme: AppTheme().myTheme(),
    );
  }
}

