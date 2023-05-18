import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Core/Routing%20Utils/routes.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
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
              Container(
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
              ),
              Text(
                "محمد اسلام عرعار",
                style: AppFonts.font_18_black_bold,
              ),
              InkWell(
                onTap: () => GoRouter.of(context).push(AppRoutes.editOwnerView),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: bRadius10,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("تغيير المالك"),
                      SizedBox(width: 10),
                      Icon(FontAwesomeIcons.penToSquare),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
