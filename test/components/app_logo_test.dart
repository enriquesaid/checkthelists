import 'package:checkthelists/components/app_logo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('logo should be normal version', () async {
    final widget = AppLogo();
    expect(widget.logo, 'images/Logo.svg');
  });

  test('logo should be dark version', () async {
    final widget = AppLogo(dark: true);
    expect(widget.logo, 'images/LogoDark.svg');
  });
}
