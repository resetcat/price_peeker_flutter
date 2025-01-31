import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_mod.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    final themeModifier = Provider.of<ThemeModifier>(context);

    return AppBar(
      title: const Text('My Price Peeker Header'),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        IconButton(
          icon: Icon(
              themeModifier.isDarkMode ? Icons.dark_mode : Icons.light_mode),
          onPressed: () => themeModifier.toggleTheme(),
        ),
      ],
    );
  }
}
