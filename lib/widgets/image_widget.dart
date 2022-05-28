import 'package:flutter/material.dart';

class Imagens extends StatelessWidget {
  const Imagens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.width * 0.5,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/flutter_logo.png',
            ),
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text('Venha para o Flutter'),
        ),
      ),
    );
  }
}
