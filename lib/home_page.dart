import 'package:flutter/material.dart';

import 'widgets/image_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollController = ScrollController();

  final names = <String>[
    'Luis',
    'Ana',
    'Ramon',
    'Matheus',
    'Rodrigo',
    'Rafael',
  ];

  final items = List.generate(500, (index) => index);

  void addNames() {
    names.add(names[names.length - 6] + names.length.toString());
    setState(() {});
  }

  void scrollToBottom() => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 5),
        curve: Curves.easeInCubic,
      );
  void scrollToTop() => _scrollController.animateTo(
        _scrollController.position.minScrollExtent,
        duration: const Duration(seconds: 5),
        curve: Curves.easeInCubic,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('List View'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: addNames,
            child: const Center(
              child: Icon(Icons.add),
            ),
          ),
          FloatingActionButton(
            onPressed: scrollToTop,
            child: const Center(
              child: Icon(Icons.arrow_upward),
            ),
          ),
          FloatingActionButton(
            onPressed: scrollToBottom,
            child: const Center(
              child: Icon(Icons.arrow_downward_outlined),
            ),
          ),
        ],
      ),
      body: const Imagens(),
    );
  }
}
