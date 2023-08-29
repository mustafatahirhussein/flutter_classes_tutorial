import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_classes_tutorial/presentation/class_viii/model/student_model.dart';

class ClassVIII extends StatefulWidget {
  const ClassVIII({super.key});

  @override
  State<ClassVIII> createState() => _ClassVIIIState();
}

class _ClassVIIIState extends State<ClassVIII> {

  late Future<StudentModel> _studentFuture;

  Future<StudentModel> getStudents() async {
    String res = await rootBundle.loadString('assets/test.json');

    Map<String, dynamic> decode = json.decode(res);
    StudentModel result = StudentModel.fromJson(decode);

    // print("result ${result.message}");
    return result;
  }

  @override
  void initState() {
    // TODO: implement initState

    _studentFuture = getStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class 8"),
      ),
      body: FutureBuilder<StudentModel>(
        future: _studentFuture,
        builder: (context, snapshot) {

          if(snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data!.data.length,
              itemBuilder: (context, i) {

                Datum item = snapshot.data!.data[i];

                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(item.id.toString()),
                    ),
                    title: Text(item.name, style: const TextStyle(
                      fontSize: 22
                    ),),
                    subtitle: Text("Student marks ${item.marks}"),
                  ),
                );
              },
            );
          }
          else {
            return const SizedBox(
              height: 0,
              width: 0,
            );
          }
        },
      ),
    );
  }
}
