import 'package:flutter/material.dart';

final childrenWidget = <GridWidget>[
  GridWidget(title: 'Conta', icons: Icons.wallet, onPressed: () {}),
  GridWidget(title: 'Extrato', icons: Icons.list_alt, onPressed: () {}),
  GridWidget(
      title: 'Empréstimo', icons: Icons.monetization_on, onPressed: () {}),
];

class GriViewWithButtons extends StatelessWidget {
  const GriViewWithButtons({
    Key? key,
    required ScrollController scrollController,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      thumbVisibility: true,
      thickness: 8.0,
      interactive: true,
      child: GridView.builder(
        controller: _scrollController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: childrenWidget.length,
        itemBuilder: (context, index) => MyButton(info: childrenWidget[index]),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.info,
  }) : super(key: key);

  final GridWidget info;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: info.onPressed,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(info.icons),
            const SizedBox(
              height: 4.0,
            ),
            Text(info.title),
          ],
        ),
      ),
    );
  }
}

class GridWidget {
  final String title;
  final IconData icons;
  final VoidCallback onPressed;
  GridWidget({
    required this.title,
    required this.icons,
    required this.onPressed,
  });
}
