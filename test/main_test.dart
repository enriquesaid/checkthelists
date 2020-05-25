import 'package:checkthelists/app.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:checkthelists/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class FakeFunctions {
  void runApp(dynamic widget) {}
  void before() {}
}

class FunctionsMock extends Mock implements FakeFunctions {}

void main() {
  test('App bootstrap method', () async {
    var functionMock = FunctionsMock();
    var app = App();
    await app.bootstrap(functionMock.runApp, before: functionMock.before);
    verifyInOrder([functionMock.before(), functionMock.runApp(any)]);
  });

  testWidgets('HomePage should be ListsPage with MaterialApp',
      (WidgetTester tester) async {
    await tester.pumpWidget(CheckTheListsApp());
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(ListsPage), findsOneWidget);
  });
}
