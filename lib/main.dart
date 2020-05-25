import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:checkthelists/app.dart';

void main() => App().bootstrap(runApp, before: () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp]);
    });

class App {
  Future<void> bootstrap(Function runner, {Function before}) async {
    await (before ?? (() {}))();
    runner(CheckTheListsApp());
  }
}
