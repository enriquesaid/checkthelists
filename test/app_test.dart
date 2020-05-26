import 'package:checkthelists/app.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('homePage should be ListsPage with MaterialApp',
      (WidgetTester tester) async {
    await tester.pumpWidget(CheckTheListsApp());
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(ListsPage), findsOneWidget);
  });

  testWidgets('main widget should have requireds parent widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(CheckTheListsApp());
    expect(find.byType(MultiProvider), findsOneWidget);
  });
}
