import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final bool dark;

  const AppLogo({
    Key key,
    this.dark = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'images/${dark ? 'LogoDark' : 'Logo'}.svg',
      alignment: Alignment.topLeft,
    );
  }
}
