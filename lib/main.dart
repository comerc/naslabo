import 'package:flutter/material.dart';
import 'package:naslabo/import.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/lobby': (context) => LobbyScreen(),
        '/login': (context) => LoginScreen(),
        '/message':(context)=> MessageScreen
      },
      initialRoute: "/login",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
