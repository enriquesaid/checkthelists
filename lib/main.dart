import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:checkthelists/app.dart';

void main() => App.bootstrap();

class App {
  static bootstrap([Function runApp = runApp]) async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(CheckTheListsApp());
  }
}
