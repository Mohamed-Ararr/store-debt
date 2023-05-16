import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import 'OwnerCard.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * .7,
        decoration: BoxDecoration(
          borderRadius: bRadius10,
          color: AppColors.purpleColor,
        ),
        child: OwnerCard(),
      ),
    );
  }
}
