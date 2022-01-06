import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String name = "none";
  final String code = "none";

  bool isEnterLobbyButtonActive = false;

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
                  buildEnterLobbyButton(),
                  ElevatedButton(
                    onPressed: () {
                      submitForm;
                      Navigator.pushNamed(context, "/lobby",
                          arguments: {"name": nameController.text});
                    },
                    child: Text("Create lobby"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      submitForm;
                      Navigator.pushNamed(context, "/message",
                          arguments: {"name": nameController.text});
                    },
                    child: Text("Go to message screen"),
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

  Widget buildEnterLobbyButton() {
    return ElevatedButton(
      onPressed: () {
        submitForm;
        Navigator.pushNamed(context, "/lobby",
            arguments: {"name": nameController.text});
      },
      child: Text("Enter lobby"),
    );
  }
}
