import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import 'DebtClientInfo.dart';

class DebtClientCard extends StatelessWidget {
  const DebtClientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.purpleColor,
        borderRadius: bRadius10,
      ),
      child: Padding(
        padding: paddingTB14RL15,
        child: DebtClientInfo(),
      ),
    );
  }
}
