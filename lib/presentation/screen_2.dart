import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.text,});

  final String text;

  @override
  Widget build(BuildContext context) {
    // Map? arg = ModalRoute.of(context)!.settings.arguments as Map?;
    // print(arg!['result']);

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("This is class #1\n$text", style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),

            TextButton(
              child: Text("Pop to Screen 1"),
              onPressed: () {

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
