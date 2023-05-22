import 'package:flutter/material.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/AddNewDebtButton.dart';

import '../../../../Constants.dart';
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
            "مرحبا Mohamed\nأرجو أن تحظى بيوم رائع",
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
