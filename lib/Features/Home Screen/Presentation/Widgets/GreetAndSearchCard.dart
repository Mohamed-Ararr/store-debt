import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Constants.dart';
import '../../../../Core/AppLocal.dart';
import '../../../../Core/Style Utils/AppColors.dart';

class GreetAndSearchCard extends StatelessWidget {
  const GreetAndSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll15,
      decoration: BoxDecoration(
        borderRadius: bRadius10,
        color: AppColors.lightGreen,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${getLang(context, "greet-with-owner")} Mohamed\n${getLang(context, "greet-without-owner")}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: AppColors.purpleColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
