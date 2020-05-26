import 'package:checkthelists/main.dart';
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
}
