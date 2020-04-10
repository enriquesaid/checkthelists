import 'package:checkthelists/components/app_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AppLogo(dark: Theme.of(context).brightness == Brightness.dark)
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            icon: Icon(Icons.info, color: Colors.black26),
            onPressed: () => _infoDialog(context),
          ),
        )
      ]
    );
  }

  Future<void> _infoDialog(context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('About CheckTheLists'),
          content: Text('Awesome Checklists for Everything!'),
        );
      },
    );
  }
}
