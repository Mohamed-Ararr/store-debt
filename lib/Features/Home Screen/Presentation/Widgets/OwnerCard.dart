import 'package:flutter/material.dart';
import 'package:storedebt/Core/Custom%20Mades/CustomEditOwnerButton.dart';
import 'package:storedebt/Core/Custom%20Mades/CustomOwnerAvatar.dart';

import '../../../../Core/Style Utils/AppFonts.dart';

class OwnerCard extends StatelessWidget {
  const OwnerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: MediaQuery.of(context).size.height * 0.28,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomOwnerAvatar(),
              Text(
                "محمد اسلام عرعار",
                style: AppFonts.font_18_black_bold,
              ),
              CustomEditOwnerButton(),
            ],
          ),
        ),
      ],
    );
  }
}
