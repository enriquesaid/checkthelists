import 'package:checkthelists/pages/categories.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  final int currentIndex;
  final bool currentActivate;

  const AppNavigationBar({
    Key key,
    this.currentIndex = 0,
    this.currentActivate = true,
  }) : super(key: key);

  @override
  _AppNavigationBarState createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  final List<PageRouteBuilder> appNavigationBarPages = [
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ListsPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
    ),
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => CategoriesPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
    ),
  ];

  bool get isDark => Theme.of(context).brightness == Brightness.dark;
  Color get baseColor => isDark ? Colors.grey[400] : Colors.black54;
  Color get selectedItemColor => widget.currentActivate ? Theme.of(context).accentColor : baseColor;

  @override
  BottomNavigationBar build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: widget.currentIndex,
      selectedLabelStyle: Theme.of(context).textTheme.button,
      unselectedLabelStyle: Theme.of(context).textTheme.button,
      selectedItemColor: selectedItemColor,
      onTap: (int i) => Navigator.pushReplacement(
        context,
        appNavigationBarPages[i]
      ),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text('/lists'),
          icon: Icon(Icons.list)
        ),
        BottomNavigationBarItem(
          title: Text('/categories'),
          icon: Icon(Icons.category)
        )
      ],
    );
  }
}
