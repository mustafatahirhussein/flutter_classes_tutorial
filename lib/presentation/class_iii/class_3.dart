import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      ///resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Exploring Listview builder"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            FlutterLogo(
              size: 200,
            ),

            SizedBox(
              height: 150,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: 40,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) {

                  // index always starts with 0
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Third Lecture #${i + 1}", style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 150,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: 40,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) {

                  // index always starts with 0
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Third Lecture #${i + 1}", style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  );
                },
              ),
            ),

            ListView.separated(
              padding: EdgeInsets.all(10),
              itemCount: 40,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, i) {

                // index always starts with 0
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Third Lecture #${i + 1}", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                );
              },
              separatorBuilder: (_, i) {
                // return SizedBox(
                //   height: 13,
                // );

                return Divider(
                  color: Colors.red,
                );
              },
            ),

            ///OR

            // Expanded(
            //   child: ListView(
            //     shrinkWrap: true,
            //     children: List<Widget>.generate(40, (i) => Card(
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text("Third Lecture #${i + 1}", style: TextStyle(
            //           fontSize: 24,
            //           fontWeight: FontWeight.bold,
            //         ),),
            //       ),
            //     ),),
            //   ),
            // ),

            ///Spread Operator

            // ...List<Widget>.generate(40, (i) => Card(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text("Third Lecture #${i + 1}", style: TextStyle(
            //       fontSize: 24,
            //       fontWeight: FontWeight.bold,
            //     ),),
            //   ),
            // ),),

          ],
        ),
      ),
    );
  }
}
