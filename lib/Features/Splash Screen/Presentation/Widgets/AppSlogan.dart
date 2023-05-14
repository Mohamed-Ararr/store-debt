import 'package:flutter/material.dart';

import '../../../../Core/AppLocal.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class AppSlogan extends StatelessWidget {
  const AppSlogan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      child: Text(
        "${getLang(context, "app-slogan")}",
        style: AppFonts.font_18_white,
        textAlign: TextAlign.center,
      ),
    );
  }
}
