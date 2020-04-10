import 'package:checkthelists/components/page_title.dart';
import 'package:checkthelists/models/category.dart';
import 'package:checkthelists/pages/lists.dart';
import 'package:checkthelists/scaffolds/default_scaffold.dart';
import 'package:checkthelists/data/categories.dart' as data;
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final List<Category> _categories = data.dataList;

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      currentIndex: 1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PageTitle(title: '/categories'),
            SizedBox(height: 10),
            Wrap(
              children: List<Widget>.generate(
                _categories.length,
                (i) => Container(
                  width: (MediaQuery.of(context).size.width / 2) - 10,
                  height: 55,
                  color: Theme.of(context).primaryColorDark,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  child: OutlineButton(
                    highlightedBorderColor: Theme.of(context).accentColor,
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).accentColor,
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.white
                    ),
                    shape: RoundedRectangleBorder(),
                    child: Text(_categories[i].label),
                    onPressed: () => Navigator.of(context).pushReplacement(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => ListsPage(category: _categories[i]),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
                    )),
                  ),
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
