import 'package:flutter/material.dart';
import 'app_theme.dart';

enum Flavor { tigo, claro }

class FlavorConfig {
  static Flavor? appFlavor;

  static AppTheme get theme {
    switch (appFlavor) {
      case Flavor.tigo:
        return AppTheme(
          primaryColor: const Color(0xFF005AA7),
          secondaryColor: const Color(0xFF00CFFF),
          tertiaryColor: const Color(0xFF142850),
          logo: "assets/logos/Tigo.png",
          titleFont: "Times New Roman",
          bodyFont: "Inter",
        );
      case Flavor.claro:
        return AppTheme(
          primaryColor: const Color(0xFFEC1C24),
          secondaryColor: const Color(0xFFFFB400),
          tertiaryColor: const Color(0xFF990000),
          logo: "assets/logos/Claro.png",
          titleFont: "Arial",
          bodyFont: "Roboto",
        );
      default:
        return AppTheme(
          primaryColor: const Color(0xFF2196F3),
          secondaryColor: const Color(0xFF4CAF50),
          tertiaryColor: const Color(0xFF9C27B0),
          logo: "assets/logos/Tigo.png",
          titleFont: "Roboto",
          bodyFont: "Roboto",
        );
    }
  }
}
