import 'package:flutter/material.dart';

class ThemeModifier extends ChangeNotifier {
  bool _isDarkMode = true;
  ThemeData _currentTheme;

  ThemeModifier() : _currentTheme = ThemeData.dark();

  ThemeData get currentTheme => _currentTheme;
  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _currentTheme = _isDarkMode ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }
}
