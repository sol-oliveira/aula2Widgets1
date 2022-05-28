import 'package:flutter/material.dart';

import 'circle_container.dart';

class GridViewCrossAxisExtent extends StatelessWidget {
  const GridViewCrossAxisExtent({
    Key? key,
    required ScrollController scrollController,
    required this.items,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List<int> items;

  @override
  Widget build(BuildContext context) {
    return GridView(
      controller: _scrollController,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 63,
      ),
      children: items
          .map(
            (e) => CircleContainer(
              e: e.toString(),
            ),
          )
          .toList(),
    );
  }
}
