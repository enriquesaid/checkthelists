import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;

  const PageTitle({
    Key key,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'pageTitle',
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subhead,
        ),
      ),
    );
  }
}
