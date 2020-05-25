import 'package:checkthelists/app.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:checkthelists/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class FakeRunApp {
  void runApp(dynamic widget) {}
}

class RunAppMock extends Mock implements FakeRunApp {}

class FakeApp {
  void before() {}
}

class AppMock extends Mock implements FakeApp {}

void main() {
  test('App bootstrap method', () async {
    var runAppMock = RunAppMock();
    var appMock = AppMock();
    var app = App();
    await app.bootstrap(runAppMock.runApp, before: appMock.before);
    verifyInOrder([appMock.before(), runAppMock.runApp(any)]);
  });

  testWidgets('HomePage should be ListsPage with MaterialApp',
      (WidgetTester tester) async {
    await tester.pumpWidget(CheckTheListsApp());
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(ListsPage), findsOneWidget);
  });
}
