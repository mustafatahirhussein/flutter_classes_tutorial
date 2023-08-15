import 'package:flutter/material.dart';

class ClassV extends StatelessWidget {
  const ClassV({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.titleMedium!;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Class V tutorial", style: style,),
      ),
    );
  }
}
