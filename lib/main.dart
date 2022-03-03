import 'package:flutter/material.dart';
import 'package:flutter_app_flavors/flavor_config.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final flavour = Constants.whereAmI;
    return MaterialApp(
      title: flavour.getFlavourName(),
      theme: ThemeData(primarySwatch: flavour.getFlavourColor()),
      home: Scaffold(
        appBar: AppBar(
          title: Text(flavour.getFlavourName()),
        ),
        body: Center(
          child: Image.asset(flavour.getFlavourAppIcon()),
        ),
      ),
    );
  }
}
