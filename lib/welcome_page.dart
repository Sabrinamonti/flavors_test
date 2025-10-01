import 'package:flutter/material.dart';
import 'config/flavors.dart';

class WelcomePage extends StatelessWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

  const WelcomePage({
    Key? key,
    required this.onToggleTheme,
    required this.isDarkMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FlavorConfig.theme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(theme.logo, height: 120),
            const SizedBox(height: 20),
            Text(
              "Welcome to ${FlavorConfig.appFlavor.toString().split('.').last.toUpperCase()}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "TESTING APP...",
              style: TextStyle(
                  color: theme.secondaryColor, fontFamily: theme.titleFont),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isDarkMode ? theme.secondaryColor : theme.primaryColor),
                onPressed: () {},
                child: Text(
                  "Test Button",
                  style: TextStyle(fontFamily: theme.bodyFont),
                )),
            const SizedBox(height: 20),
            SwitchListTile(
              title: Text(isDarkMode ? "Dark Mode" : "Light Mode"),
              value: isDarkMode,
              onChanged: (_) => onToggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
