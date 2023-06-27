import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/constants/route_prefixes.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("This is class #1", style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),

            TextButton(
              child: Text("Route to Page 2"),
              onPressed: () {

                //var route = MaterialPageRoute(builder: (_) => Screen2());
                //Navigator.push(context, route);

                Navigator.pushNamed(context, RoutePrefixes.screen2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
