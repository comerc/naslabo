import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Enter your message"),),
        body: Column(
          children: [
            TextFormField(
              controller: messageController,
              maxLines: 10,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context, "/lobby");
              },
              child: Text("Send your message"),
            ),
          ],
        ),
      ),
    );
  }
}
