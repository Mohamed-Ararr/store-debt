import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

import "../../Constants.dart";
import "../Style Utils/AppColors.dart";

class CustomOwnerAvatar extends StatelessWidget {
  const CustomOwnerAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.beigeColor,
        border: Border.all(),
        borderRadius: bRadiusHalf,
      ),
      child: SvgPicture.asset(
        userAvatar,
        width: 50,
      ),
    );
  }
}
