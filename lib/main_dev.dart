import 'package:flutter/material.dart';
import 'package:flutter_app_flavors/flavor_config.dart';

import 'main.dart';

void main() async {
  Constants.setEnvironment(Environment.dev);
  // await initializeApp();
  runApp(const MyApp());
}
