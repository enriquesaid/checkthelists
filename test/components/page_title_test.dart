import 'package:checkthelists/components/page_title.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('title should be rendered', (WidgetTester tester) async {
    final widget = PageTitle(title: 'Test');
    await tester.pumpWidget(widget);
    expect(find.text('Test'), findsOneWidget);
  });
}
