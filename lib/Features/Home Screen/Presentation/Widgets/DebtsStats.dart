import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class DebtsStats extends StatelessWidget {
  const DebtsStats(
      {super.key, required this.title, required this.percentageBar});

  final String title;
  final double percentageBar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppFonts.defaultWithBoldWhite,
        ),
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .6,
              height: 10,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: bRadius10,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 10,
              decoration: BoxDecoration(
                color: AppColors.lightRed,
                borderRadius: bRadius10,
              ),
            ),
          ],
        ),
        Text(
          "${percentageBar * 100}%",
          style: AppFonts.defaultWithBoldWhite,
        ),
      ],
    );
  }
}
