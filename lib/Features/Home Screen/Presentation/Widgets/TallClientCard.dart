import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import 'TallClientInfo.dart';

class TallClientCard extends StatelessWidget {
  const TallClientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width * 0.28,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.whiteColor),
          borderRadius: bRadius10,
        ),
        child: TallClientInfo(),
      ),
    );
  }
}
