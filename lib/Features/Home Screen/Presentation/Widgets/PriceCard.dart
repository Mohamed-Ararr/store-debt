import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';

import '../../../../Core/Style Utils/AppColors.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: AppColors.lightGreen,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Dz",
                style: AppFonts.font_13,
              ),
              Text(
                "1200,00",
                style: AppFonts.font_18_black_bold,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            decoration: BoxDecoration(
                color: AppColors.purpleColor,
                borderRadius: BorderRadius.circular(5)),
            child: InkWell(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.arrowLeft,
                size: 15,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
