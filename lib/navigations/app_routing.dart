import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/constants/route_prefixes.dart';
import 'package:flutter_classes_tutorial/presentation/class_ii/sample_form.dart';
import 'package:flutter_classes_tutorial/presentation/class_iii/class_3.dart';
import 'package:flutter_classes_tutorial/presentation/class_iv/class_4.dart';
import 'package:flutter_classes_tutorial/presentation/class_ix/class_9.dart';
import 'package:flutter_classes_tutorial/presentation/class_v/class_v.dart';
import 'package:flutter_classes_tutorial/presentation/class_vi/class_vi.dart';
import 'package:flutter_classes_tutorial/presentation/class_vii/class_vii.dart';
import 'package:flutter_classes_tutorial/presentation/screen_1.dart';
import 'package:flutter_classes_tutorial/presentation/screen_2.dart';

import '../presentation/class_viii/class_viii.dart';

class AppRouting {
  dynamic onGenerateRoutes(RouteSettings settings) {
    switch(settings.name) {
      case RoutePrefixes.initialRoute:
        //return MaterialPageRoute(builder: (_) => Screen1());
        return router(const Screen1());

      case RoutePrefixes.screen2:
        return router(const Screen2(text: "This is just a test",));

      case RoutePrefixes.sampleForm:
        return router(const SampleForm());

        case RoutePrefixes.class3:
        return router(const Class3());

        case RoutePrefixes.class4:
        return router(const Class4());

      case RoutePrefixes.class5:
        return router(const ClassV());

        case RoutePrefixes.class6:
        return router(const ClassVI());

        case RoutePrefixes.class7:
        return router(const ClassVII());

        case RoutePrefixes.class8:
        return router(const ClassVIII());

        case RoutePrefixes.class9:
        return router(const Class9());

      default:
        return router(
          Scaffold(
            appBar: AppBar(
              title: const Text('No Route Found'),
            ),
          ),
        );
    }
  }

  router(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}