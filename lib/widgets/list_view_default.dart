import 'package:flutter/material.dart';

import 'contacts_widget.dart';

class ListViewDefault extends StatelessWidget {
  const ListViewDefault({
    Key? key,
    required ScrollController scrollController,
    required this.names,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      interactive: true,
      thickness: 12.0,
      thumbVisibility: true,
      radius: const Radius.circular(12.0),
      child: ListView(
          shrinkWrap: true,
          controller: _scrollController,
          children: names
              .map((e) => ContactListTile(
                    name: e,
                    index: names.indexOf(e),
                  ))
              .toList()),
    );
  }
}
