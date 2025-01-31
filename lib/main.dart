import 'package:flutter/material.dart';
import 'package:price_peeker_flutter/footer/footer.dart';
import 'package:provider/provider.dart';
import 'header/header.dart';
import 'theme/theme_mod.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeModifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeModifier = Provider.of<ThemeModifier>(context);

    return MaterialApp(
      title: 'PP',
      theme: themeModifier.currentTheme,
      // useMaterial3: true,
      home: Scaffold(
        appBar: const Header(),
        body: const Center(
          child: Text('Main Content Here'),
        ),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
