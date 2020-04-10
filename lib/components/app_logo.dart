import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final bool dark;

  const AppLogo({
    Key key,
    this.dark = false,
  }) : super(key: key);

  String get logo => 'images/${dark ? 'LogoDark' : 'Logo'}.svg';

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      logo,
      alignment: Alignment.topLeft,
    );
  }
}
