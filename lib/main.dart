import 'package:checkthelists/layout/app_theme_data.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:checkthelists/stores/checklists.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(CheckTheListsApp());
}

class CheckTheListsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ChecklistList(),
          dispose: (_, store) => store.dispose()
        )
      ],
      child: MaterialApp(
        darkTheme: AppThemeData.themeDataDark,
        theme: AppThemeData.themeData,
        home: ListsPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
