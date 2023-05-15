import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import '../../../../Core/Style Utils/AppFonts.dart';
import 'ClinetAvatar.dart';

class TallClientInfo extends StatelessWidget {
  const TallClientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClientAvatar(),
        Text(
          "محمد اسلام عرعار",
          style: AppFonts.defaultWithBoldWhite,
          textAlign: TextAlign.center,
        ),
        Text(
          "25 ديسمبر 2023",
          style: AppFonts.font_13_grey,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: bRadius10,
            color: AppColors.lightGreen,
          ),
          child: Text(
            "1200,00",
            style: AppFonts.font_18_black_bold.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
