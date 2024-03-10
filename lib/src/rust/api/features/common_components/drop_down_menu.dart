import 'package:education_system/src/rust/api/features/common_components/topbar_textview.dart';
import 'package:flutter/material.dart';

class AppDropdownMenu extends StatelessWidget {
  final List<String> options;
  final Function(String) onSelected;
  final Widget child;

  const AppDropdownMenu({
    super.key,
    required this.options,
    required this.onSelected,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return options.map((String option) {
          return PopupMenuItem<String>(
            value: option,
            child: TopBarTextItem(
              title: option,
              onTap: () {},
            ),
          );
        }).toList();
      },
      child: child,
    );
  }
}
