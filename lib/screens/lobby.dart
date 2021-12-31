import 'package:flutter/material.dart';

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  _LobbyScreenState createState() => _LobbyScreenState();
}

enum Status {
  ready,
  wait,
}

class User {
  User({required this.name, required this.status});

  String name;
  Status status;
}

final data = [
  User(name: "Andrei", status: Status.wait),
  User(name: "Ruslan", status: Status.wait),
  User(name: "Maxim", status: Status.wait),
  User(name: "Sasha", status: Status.wait),
];

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(child: Text("Users")),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListUsers(),
          ),
        ],
      ),
    ));
  }
}

class ListUsers extends StatefulWidget {
  const ListUsers({Key? key}) : super(key: key);

  @override
  _ListUsersState createState() => _ListUsersState();
}

class _ListUsersState extends State<ListUsers> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text('${data[index].name}'),
            ),
            ElevatedButton(
                onPressed: () {}, child: Text("${data[index].status}"))
          ]);
        });
  }
}
