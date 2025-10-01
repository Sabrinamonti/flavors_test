import 'package:flutter/material.dart';
import 'config/flavors.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _isDarkMode = false;
  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlavorConfig.theme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? theme.darkTheme() : theme.lightTheme(),
      home: WelcomePage(
        onToggleTheme: _toggleTheme,
        isDarkMode: _isDarkMode,
      ),
    );
  }
}
