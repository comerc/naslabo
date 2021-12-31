import 'package:flutter/material.dart';
import 'package:naslabo/import.dart';

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

const statusDisplayNames = {
  Status.wait: "Wait",
  Status.ready: "Ready",
};

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/message');
        },
        child: Text("Go!"),
      ),
      appBar: AppBar(
        title: Text("Users"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListUsers(),
          ),
        ),
      ),
    );
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
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${data[index].name}'),
            Icon(
              Icons.hourglass_empty,
              size: 16,
            ),
          ],
        );
      },
    );
  }
}
