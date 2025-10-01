import 'package:flutter/material.dart';
import 'config/flavors.dart';
import 'main.dart';

void main() {
  FlavorConfig.appFlavor = Flavor.tigo;
  runApp(MainApp());
}
