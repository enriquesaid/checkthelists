import 'package:checkthelists/pages/lists.dart';
import 'package:checkthelists/stores/checklists.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'layout/app_theme_data.dart';

class CheckTheListsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
            create: (_) => ChecklistList(),
            dispose: (_, store) => store.dispose())
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
