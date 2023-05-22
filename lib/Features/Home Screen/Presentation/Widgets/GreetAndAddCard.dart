import 'package:flutter/material.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/AddNewDebtButton.dart';

import '../../../../Constants.dart';
import '../../../../Core/AppLocal.dart';
import '../../../../Core/Style Utils/AppColors.dart';

class GreetAndAddCard extends StatelessWidget {
  const GreetAndAddCard({super.key});

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
          AddNewDebtButton(backgroundColor: AppColors.whiteColor),
        ],
      ),
    );
  }
}
