import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_classes_tutorial/presentation/class_ix/model/fake_users_model.dart';
import 'package:http/http.dart' as http;

class Class9 extends StatefulWidget {
  const Class9({super.key});

  @override
  State<Class9> createState() => _Class9State();
}

class _Class9State extends State<Class9> {

  List<FakeUserModel> userList = [];

  String url = "https://jsonplaceholder.typicode.com/todos/";
  int statusCode = 200;

  Future<List<FakeUserModel>> getFakeUsers() async {
    http.Response req = await http.get(Uri.parse(url));

    if(statusCode == req.statusCode) {

      List<dynamic> output = jsonDecode(req.body);
      var item = output.map((e) => FakeUserModel.fromJson(e)).toList();

      return item;
    }
    else {
      return [];
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getFakeUsers().then((value) {
      setState(() {
        userList.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fake Json Data"),
      ),
      body: userList.isEmpty ? const Center(child: Text("No Data available")) : ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, i) {

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Text(userList[i].id.toString()),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userList[i].title!, style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),),

                      Text(userList[i].completed! ? 'Completed' : 'Not Completed', style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
