import 'package:flutter/material.dart';

import 'circle_container.dart';

class GridViewCrossAxisCount extends StatelessWidget {
  const GridViewCrossAxisCount({
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
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
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
