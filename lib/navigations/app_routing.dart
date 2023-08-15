import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/constants/route_prefixes.dart';
import 'package:flutter_classes_tutorial/presentation/class_ii/sample_form.dart';
import 'package:flutter_classes_tutorial/presentation/class_iii/class_3.dart';
import 'package:flutter_classes_tutorial/presentation/class_iv/class_4.dart';
import 'package:flutter_classes_tutorial/presentation/screen_1.dart';
import 'package:flutter_classes_tutorial/presentation/screen_2.dart';

class AppRouting {
  dynamic onGenerateRoutes(RouteSettings settings) {
    switch(settings.name) {
      case RoutePrefixes.initialRoute:
        //return MaterialPageRoute(builder: (_) => Screen1());
        return router(Screen1());

      case RoutePrefixes.screen2:
        return router(Screen2(text: "This is just a test",));

      case RoutePrefixes.sampleForm:
        return router(SampleForm());

        case RoutePrefixes.class3:
        return router(Class3());

        case RoutePrefixes.class4:
        return router(Class4());

      default:
        return router(
          Scaffold(
            appBar: AppBar(
              title: Text('No Route Found'),
            ),
          ),
        );
    }
  }

  router(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}