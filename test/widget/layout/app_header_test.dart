import 'package:checkthelists/components/app_logo.dart';
import 'package:checkthelists/layout/app_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AppLogo should be rendered', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: AppHeader(),
          )
        ),
      )
    );

    expect(find.byType(AppLogo), findsOneWidget);
  });

  testWidgets('info button should be open the info dialog', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: AppHeader(),
          )
        ),
      )
    );

    await tester.tap(find.byType(IconButton));
    await tester.pumpAndSettle();

    expect(find.text('About CheckTheLists'), findsOneWidget);
  });
}
