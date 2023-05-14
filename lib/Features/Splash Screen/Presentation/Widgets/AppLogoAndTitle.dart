import 'package:flutter/material.dart';

import '../../../../Core/AppLocal.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class AppLogoAndTitle extends StatelessWidget {
  const AppLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/appLogo.png",
          scale: 1.3,
        ),
        SizedBox(height: 15),
        Text(
          "${getLang(context, 'app-title')}",
          style: AppFonts.appTitleStyle,
        ),
      ],
    );
  }
}
