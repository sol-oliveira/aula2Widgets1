import 'package:flutter/material.dart';

import 'custom_list_tile.dart';
import 'left_widget.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    Key? key,
    required this.name,
    required this.index,
  }) : super(key: key);

  final String name;
  final int index;
  
  @override
  Widget build(BuildContext context) {
    print(index);
    return CustomListTile(
      title: Row(
        children: [
          Text(
            name,
          ),
        ],
      ),
      leading: const [
        LeftWidget(),
      ],
      trailing: const [
        Icon(Icons.phone),
        Icon(Icons.message),
      ],
    );
  }
}
