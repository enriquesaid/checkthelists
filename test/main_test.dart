import 'package:checkthelists/app.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:checkthelists/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class FakeRunAppClass {
  void runApp(dynamic widget) {}
}

class RunAppMock extends Mock implements FakeRunAppClass {}

void main() {
  test('runApp should be called by bootstrap method', () async {
    var runAppMock = RunAppMock();
    await App.bootstrap(runAppMock.runApp);
    verify(runAppMock.runApp(any)).called(1);
  });

  testWidgets('HomePage should be ListsPage', (WidgetTester tester) async {
    await tester.pumpWidget(CheckTheListsApp());
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(ListsPage), findsOneWidget);
  });
}
