import 'package:flutter/material.dart';

enum Environment {
  dev,
  qa,
  prod,
}

class Constants {
  static late Map<String, dynamic> _config;

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.dev:
        _config = _Config.debugConstants;
        break;
      case Environment.qa:
        _config = _Config.stageConstants;
        break;
      case Environment.prod:
        _config = _Config.prodConstants;
        break;
    }
  }

  static String get whereAmI {
    return _config[_Config.flavour] as String;
  }
}

class _Config {
  static const flavour = 'flavour';

  static Map<String, dynamic> debugConstants = {
    flavour: 'dev',
  };

  static Map<String, dynamic> stageConstants = {
    flavour: 'qa',
  };

  static Map<String, dynamic> prodConstants = {
    flavour: 'prod',
  };
}

extension FlavourTypeExtension on String {
  MaterialColor getFlavourColor() {
    switch (this) {
      case 'dev':
        return Colors.yellow;
      case 'qa':
        return Colors.grey;
      case 'prod':
        return Colors.green;
      default:
        return Colors.blue;
    }
  }

  String getFlavourName() {
    switch (this) {
      case 'dev':
        return 'TPSWallet';
      case 'qa':
        return 'bWallet';
      case 'prod':
        return 'DIB';
      default:
        return 'Unknown';
    }
  }

  String getFlavourAppIcon() {
    switch (this) {
      case 'dev':
        return 'assets/icons/tpsWallet.png';
      case 'qa':
        return 'assets/icons/bWallet.png';
      case 'prod':
        return 'assets/icons/dib.png';
      default:
        return 'Unknown';
    }
  }
}
