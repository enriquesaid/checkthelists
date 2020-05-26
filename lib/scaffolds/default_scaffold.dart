import 'package:checkthelists/layout/app_header.dart';
import 'package:checkthelists/layout/app_navigation_bar.dart';
import 'package:flutter/material.dart';

class DefaultScaffold extends StatefulWidget {
  final Widget body;
  final int currentIndex;

  DefaultScaffold({Key key, this.currentIndex = 0, this.body})
      : super(key: key);

  @override
  _DefaultScaffoldState createState() => _DefaultScaffoldState();
}

class _DefaultScaffoldState extends State<DefaultScaffold> {
  bool get currentActivate => widget.currentIndex == null ? false : true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: SafeArea(
          bottom: false,
          child: AppHeader(),
        ),
      ),
      body: widget.body,
      bottomNavigationBar: AppNavigationBar(
        currentActivate: currentActivate,
        currentIndex: widget.currentIndex ?? 0,
      ),
    );
  }
}
