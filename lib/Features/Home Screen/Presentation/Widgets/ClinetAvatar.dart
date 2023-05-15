import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';

class ClientAvatar extends StatelessWidget {
  const ClientAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(),
        color: AppColors.beigeColor,
        borderRadius: bRadiusHalf,
      ),
      child: Image.asset(
        clientAvatar,
        scale: 1.1,
      ),
    );
  }
}
