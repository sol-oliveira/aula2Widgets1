import 'package:flutter/material.dart';

import 'contacts_widget.dart';

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({
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
      child: ListView.separated(
        shrinkWrap: true,
        controller: _scrollController,
        itemCount: names.length,
        itemBuilder: (context, index) => ContactListTile(
          name: names[index],
          index: index,
        ),
        separatorBuilder: (context, index) => const Divider(
          thickness: 2.0,
        ),
      ),
    );
  }
}
