import 'package:flutter/material.dart';

import 'widgets/contacts_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final names = <String>[
    'Luis',
    'Ana',
    'Ramon',
    'Matheus',
    'Rodrigo',
    'Rafael',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ...names.map((e) => ContactListTile(name: e)).toList(),
        ],
      ),
    );
  }
}
