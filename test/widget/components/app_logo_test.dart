import 'package:checkthelists/components/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp screen(Widget widget) => MaterialApp(
        home: Scaffold(
          body: Container(child: widget),
        ),
      );

  testWidgets('logo should be rendered', (WidgetTester tester) async {
    final widget = AppLogo();
    await tester.pumpWidget(screen(widget));
    expect(find.byType(SvgPicture), findsOneWidget);
  });
}
