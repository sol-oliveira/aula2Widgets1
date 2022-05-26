import 'package:flutter/material.dart';

const small = 48.0;
const biggest = 100.0;

class PosicionamentoWidgets extends StatelessWidget {
  const PosicionamentoWidgets({
    Key? key,
    required this.biggest,
    required this.small,
  }) : super(key: key);

  final double biggest;
  final double small;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyContainer(
              small: biggest,
              color: Colors.red,
            ),
            MyContainer(
              small: small,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.small,
    required this.color,
  }) : super(key: key);

  final double small;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: small,
      width: small,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
