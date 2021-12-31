import 'package:flutter/material.dart';
import 'package:naslabo/screens/lobby.dart';
import 'package:naslabo/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/lobby': (context) => LobbyScreen(),
        '/login': (context) => LoginScreen(),
      },
      initialRoute: "/login",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
