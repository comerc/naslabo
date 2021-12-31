import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String name = "none";
  final String code = "none";

  final inviteCodeController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("NaSlabo"),
          ),
          body: Center(
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: (InputDecoration(
                      labelText: "Enter your name",
                    )),
                  ),
                  SizedBox(height: 100, width: 100),
                  TextFormField(
                    controller: inviteCodeController,
                    decoration:
                        (InputDecoration(labelText: "Enter your invite code")),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      submitForm;
                      //Navigator.pushNamed(context, routeName)
                    },
                    child: Text("Enter lobby"),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Create lobby"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void submitForm() {
    print(nameController.text);
    print(inviteCodeController.text);
  }
}
