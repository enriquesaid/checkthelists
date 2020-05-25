import 'package:checkthelists/components/checklist_card.dart';
import 'package:checkthelists/models/checklist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:checkthelists/data/checklists.dart' as data;
import 'package:checkthelists/data/categories.dart' as categoryData;

void main() {
  MaterialApp screen(Widget widget) => MaterialApp(
        home: Scaffold(
          body: Container(child: widget),
        ),
      );

  testWidgets('button text should be start', (WidgetTester tester) async {
    final widget = CheckListCard(
      category: categoryData.dataList.first,
      checklist: data.dataList.first,
    );

    await tester.pumpWidget(screen(widget));

    expect(find.text('- start'), findsOneWidget);
  });

  testWidgets('button text should be completed', (WidgetTester tester) async {
    final widget = CheckListCard(
      category: categoryData.dataList.first,
      checklist: Checklist.fromMap(
          {...data.dataList.first.toMap(), 'completed': true}),
    );

    await tester.pumpWidget(screen(widget));

    expect(find.text('completed!'), findsOneWidget);
  });
}
