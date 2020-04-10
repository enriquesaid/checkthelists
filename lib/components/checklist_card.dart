import 'package:checkthelists/models/category.dart';
import 'package:checkthelists/models/checklist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CheckListCard extends StatelessWidget {
  final Category category;
  final Checklist checklist;
  final ChromeSafariBrowser browser;

  const CheckListCard({
    Key key,
    this.checklist,
    this.category,
    this.browser
  });

  @override
  Widget build(BuildContext context) {
    String buttonText = checklist.completed ? 'completed!' : '- start';
    Color buttonColor = checklist.completed ? Theme.of(context).primaryColor : Colors.black;
    Color borderColor = checklist.completed ? Theme.of(context).primaryColor : Theme.of(context).primaryColorLight;

    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(),
      elevation: 0,
      child: Container(
        padding: EdgeInsets.only(top: 5, right: 7, left: 7),
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 5
          )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 8,
                text: TextSpan(
                  text: '${checklist.title} - ',
                  style: Theme.of(context).textTheme.title,
                  children: [
                    TextSpan(
                      text: checklist.description,
                      style: Theme.of(context).textTheme.body1
                    )
                  ]
                )
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              children: <Widget>[
                Icon(
                  Icons.list,
                  color: Theme.of(context).textTheme.subtitle.color
                ),
                SizedBox(width: 5),
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text(
                    checklist.difficulty,
                    style: Theme.of(context).textTheme.subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ]
            ),
            Visibility(
              visible: category.id != -1,
              child: Wrap(
              children: <Widget>[
                  Icon(
                    Icons.category,
                    color: Theme.of(context).textTheme.subtitle.color
                  ),
                  SizedBox(width: 5),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      '${category.label}',
                      style: Theme.of(context).textTheme.subtitle
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            FlatButton(
              color: buttonColor,
              textColor: Theme.of(context).accentColor,
              child: Text(buttonText),
              onPressed: () async {
                await browser?.open(
                  url: checklist.url,
                  options: ChromeSafariBrowserClassOptions(
                    android: AndroidChromeCustomTabsOptions(addShareButton: false),
                    ios: IOSSafariOptions(barCollapsingEnabled: true)
                  )
                );
              },
            )
          ],
        )
      )
    );
  }
}
