import 'package:checkthelists/layout/app_navigation_bar.dart';
import 'package:checkthelists/pages/categories.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:checkthelists/stores/checklists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('navigation bar should be navigate to /lists page', (WidgetTester tester) async {
    await tester.pumpWidget(
      Provider<ChecklistList>(
        create: (_) => ChecklistList(),
        dispose: (_, store) => store.dispose(),
        child: MaterialApp(
          home: Scaffold(
            bottomNavigationBar: AppNavigationBar(),
          ),
        ),
      )
    );

    await tester.tap(find.text('/lists'));

    await tester.pumpAndSettle();

    expect(find.byType(ListsPage), findsOneWidget);
  });

  testWidgets('navigation bar should be navigate to /category page', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: AppNavigationBar(),
        ),
      )
    );

    await tester.tap(find.text('/categories'));

    await tester.pumpAndSettle();

    expect(find.byType(CategoriesPage), findsOneWidget);
  });
}
