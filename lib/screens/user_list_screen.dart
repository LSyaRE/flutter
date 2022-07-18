import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(9),
        children: [
          MaterialButton(
            height: 50,
            onPressed: () => {Navigator.pushNamed(context, '/form')},
            color: Colors.amber,
            child: const Text('Usuario 1'),
          ),
          MaterialButton(
            height: 50,
            onPressed: () => {Navigator.pushNamed(context, '/form')},
            color: Colors.amber,
            child: const Text('Usuario 2'),
          ),
          MaterialButton(
            height: 50,
            onPressed: () => {Navigator.pushNamed(context, '/form')},
            color: Colors.amber,
            child: const Text('Usuario 3'),
          ),
          MaterialButton(
            height: 50,
            onPressed: () => {Navigator.pushNamed(context, '/form')},
            color: Colors.amber,
            child: const Text('Usuario 4'),
          ),
          MaterialButton(
            height: 50,
            onPressed: () => {Navigator.pushNamed(context, '/form')},
            color: Colors.amber,
            child: const Text('Usuario 5'),
          ),
          MaterialButton(
            height: 50,
            onPressed: () => {Navigator.pushNamed(context, '/form')},
            color: Colors.amber,
            child: const Text('Usuario 6'),
          ),
        ],
      ),
    );
  }
}
