import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
  }) : super(key: key);

  final List<Widget>? leading;
  final List<Widget>? trailing;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: leading != null
                  ? Row(
                      children: leading!,
                    )
                  : const SizedBox.shrink(),
            ),
            Flexible(child: title),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: trailing != null
                  ? Row(
                      children: trailing!,
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
