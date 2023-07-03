import 'package:flutter/material.dart';

class SampleForm extends StatefulWidget {
  const SampleForm({super.key});

  @override
  State<SampleForm> createState() => _SampleFormState();
}

class _SampleFormState extends State<SampleForm> {

  TextEditingController? firstC, secondC, thirdC;

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState

    firstC = TextEditingController();
    secondC = TextEditingController();
    thirdC = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(9), /// top: 9 etc
          margin: EdgeInsets.all(20),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.start,

            physics: firstC!.text.length == 4 ? BouncingScrollPhysics() : NeverScrollableScrollPhysics(),
            children: [

              buildField(firstC!),

              TextFormField(
                controller: secondC,
                decoration: InputDecoration(
                    hintText: 'Second Value'
                ),
                validator: (val) {
                  if(val!.isEmpty) {
                    return "Value must not be empty (second)";
                  }
                  return null;
                },
                onSaved: (val) {
                  secondC!.text = "Rs.$val";
                },
                textInputAction: TextInputAction.next,
              ),

              TextFormField(
                controller: thirdC,
                decoration: InputDecoration(
                    hintText: 'Third Value'
                ),
                validator: (val) {
                  if(val!.isEmpty) {
                    return "Value must not be empty (third)";
                  }
                  return null;
                },
                onSaved: (val) {
                  thirdC!.text = "Rs.$val";
                },
                textInputAction: TextInputAction.done,
              ),

              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: Text("Validate Fields"),
                onPressed: () {

                  if(_formKey.currentState!.validate()) {
                    print("Form is validated");

                    _formKey.currentState!.save();
                  }
                  else {
                    print("Not validated");
                  }

                },
              ),

              Container(
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),

              Container(
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),

              Container(
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),
              Container(
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),

              Container(
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildField(TextEditingController controller) {
    return TextFormField(
      controller: controller,
      validator: (val) {
        if(val!.isEmpty) {
          return "Value must not be empty";
        }

        return null;
      },
      onSaved: (val) {
        controller.text = "Rs.$val";
      },
      decoration: InputDecoration(
        hintText: 'First Value',
        border: OutlineInputBorder(),
        prefix: Icon(
          Icons.ac_unit
        ),
        // suffix: Icon(
        //   Icons.ac_unit
        // ),
        isDense: true,
      ),
      readOnly: false,
      enabled: true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
    );
  }
}
