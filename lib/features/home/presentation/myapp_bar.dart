import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.title,
    this.leading, //  Optional back buttons, menus, or icons
    this.actions, // Optional list of action buttons
    this.centerTitle = true, // Optional alignment flag with a default value
  });

  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
      centerTitle: centerTitle,
      leading: leading, // injected dinamically if provided, else null
      actions: actions, // injected dinamically if provided, else null
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
