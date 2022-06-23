import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
    required this.e,
  }) : super(key: key);

  final String e;

  @override
  Widget build(BuildContext context) {
    print(e);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 55.0,
        height: 55.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.purple,
        ),
        child: Center(child: Text(e)),
      ),
    );
  }
}
