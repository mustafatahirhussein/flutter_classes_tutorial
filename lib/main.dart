import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/constants/route_prefixes.dart';
import 'package:flutter_classes_tutorial/navigations/app_routing.dart';
import 'package:flutter_classes_tutorial/presentation/screen_1.dart';
import 'package:flutter_classes_tutorial/presentation/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutePrefixes.class4,
      onGenerateRoute: (c) => AppRouting().onGenerateRoutes(c),

      // routes: {
      //   RoutePrefixes.initialRoute : (context) => Screen1(),
      //   RoutePrefixes.screen2 : (context) => Screen2()
      // },
      //home: Screen1(),
    );
  }
}

