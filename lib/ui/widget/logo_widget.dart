import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/logo.svg',
      width: 120,
      fit: BoxFit.scaleDown,
    );
  }
}