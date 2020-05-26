import 'package:checkthelists/scaffolds/default_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp screen(Widget widget) => MaterialApp(
        home: widget,
      );

  testWidgets('default scaffold should have a Scaffold widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(screen(DefaultScaffold()));
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
