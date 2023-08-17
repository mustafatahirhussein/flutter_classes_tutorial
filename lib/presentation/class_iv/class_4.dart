import 'package:flutter/material.dart';

class Class4 extends StatelessWidget {
  const Class4({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [


        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
              mainAxisSpacing: 15, crossAxisSpacing: 15),
          itemBuilder: (_, i) {
            return Container(
              height: 120,
              width: 100,
              color: Colors.green,
              child: FlutterLogo(),
            );
          },
          itemCount: 12,
        ),
        //
        // SizedBox(
        //   height: 100,
        //   child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //   shrinkWrap: true,
        //   children: [
        //     Text("Just a test"),
        //     Text("Just a test"),
        //     Text("Just a test"),
        //     Text("Just a test"),
        //     Text("Just a test"),
        //     Text("Just a test"),
        //     Text("Just a test"),
        //   ],
        //     scrollDirection: Axis.horizontal,
        //   ),
        // ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 8,
            color: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                color: Colors.white,
                width: 4,
              ),
            ),
            child: ListTile(
              title: Text("This is title"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("This is subtitle"),
                  Text("This is subtitle (isThreeLines)"),
                ],
              ),
              leading: CircleAvatar(
                child: Text("0"),
              ),
              trailing: Icon(Icons.arrow_drop_down_rounded),
              isThreeLine: true,
              dense: false,
            ),
          ),
        ),

        // RichText -> Text advanced
        /// Rs (780.00) -> Size is bigger

        Center(
          child: RichText(text: TextSpan(
            children: [
              TextSpan(
                text: 'Rs.\t\t',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: '780.00',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ),
        ),


        /// Widgets
        /// Container, Card, Listile, RichText, Text, FormField, Row & Column,
        /// Listview & Gridview -> their extended versions, Form etc.
        ///
        /// late and factory
      ],
    );
  }
}
