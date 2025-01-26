import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header> {
  bool isDarkMode = false;

  void toggleMode() {
    setState(() {
      isDarkMode = !isDarkMode; // Toggle the mode
    });
    // Log to console
    print(isDarkMode ? "Switched to Dark Mode" : "Switched to Light Mode");
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('My Price Peeker Header'),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        IconButton(
          icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
          onPressed: toggleMode,
        ),
      ],
    );
  }
}
