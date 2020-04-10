import 'package:checkthelists/components/checklist_card.dart';
import 'package:checkthelists/components/page_title.dart';
import 'package:checkthelists/models/category.dart';
import 'package:checkthelists/models/checklist.dart';
import 'package:checkthelists/scaffolds/default_scaffold.dart';
import 'package:checkthelists/stores/checklists.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:checkthelists/data/categories.dart' as categoriesData;

class ListsPage extends StatefulWidget {
  final Category category;

  const ListsPage({
    Key key,
    this.category = const Category()
  }) : super(key: key);

  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<ListsPage> {
  final List<Category> _categories = categoriesData.dataList;
  ChecklistList get _checklists => Provider.of<ChecklistList>(context);
  Iterable<Checklist> get _categoryLists => _checklists.visibleLists.where((list) => list.category == widget.category.id);
  bool get hasCategory => widget.category.id != -1;
  String get pageTitle => (['/list', widget.category.label]..remove('')).join('/');
  dynamic get currentIndex => hasCategory ? null : 0;
  ObservableList<Checklist> get checklists => hasCategory ? ObservableList.of(_categoryLists) : _checklists.visibleLists;

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      currentIndex: currentIndex,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PageTitle(title: pageTitle),
              SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 280
                ),
                child: checklists.isNotEmpty ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: checklists.length,
                  itemBuilder: (BuildContext buildContext, int i) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CheckListCard(
                      index: i,
                      category: hasCategory ? _categoryById(checklists[i].category) : widget.category,
                      checklist: checklists[i],
                      browser: ChromeSafariBrowser(bFallback: InAppBrowser()),
                    ),
                  )
                ) : Center(
                  child: Text('Empty'),
                )
              )
            ]
          )
        ),
      )
    );
  }

  Category _categoryById(int id) => _categories.firstWhere((c) => c.id == id);
}
