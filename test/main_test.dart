import 'package:checkthelists/pages/lists.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:checkthelists/main.dart';

void main() {
  testWidgets('HomePage should be ListsPage', (WidgetTester tester) async {
    await tester.pumpWidget(CheckTheListsApp());
    expect(find.byType(ListsPage), findsOneWidget);
  });
}
