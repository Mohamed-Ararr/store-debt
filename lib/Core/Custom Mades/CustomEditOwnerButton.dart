import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../Constants.dart';
import '../Routing Utils/routes.dart';
import '../Style Utils/AppColors.dart';

class CustomEditOwnerButton extends StatelessWidget {
  const CustomEditOwnerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    );
  }
}
