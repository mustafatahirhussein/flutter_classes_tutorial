import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/presentation/class_iv/class_4.dart';

class ClassVI extends StatefulWidget {
  const ClassVI({super.key});

  @override
  State<ClassVI> createState() => _ClassVIState();
}

class _ClassVIState extends State<ClassVI> {

  int _index = 0;

  List<Widget> list = [
    Container(
      color: Colors.red,
    ),

    Class4(),

    Image.network('https://www.freepnglogos.com/uploads/nature-png/nature-grass-14.png', fit: BoxFit.cover),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BNB"),
      ),

      body: list[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [

          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc_rounded
            ),
            label: 'ABC'
          ),

          BottomNavigationBarItem(
              icon: Icon(
                  Icons.factory
              ),
              label: 'DEF'
          ),

          BottomNavigationBarItem(
              icon: Icon(
                  Icons.yard_rounded
              ),
              label: 'GHI'
          ),
        ],
        currentIndex: _index,
        onTap: (val) {
          setState(() {
            _index = val;
          });
        },

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        elevation: 0,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
