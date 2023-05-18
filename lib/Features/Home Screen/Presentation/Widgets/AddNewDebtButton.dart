import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Core/Routing%20Utils/routes.dart';

import '../../../../Core/Style Utils/AppColors.dart';

class AddNewDebtButton extends StatelessWidget {
  const AddNewDebtButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.whiteColor,
      onPressed: () => GoRouter.of(context).push(AppRoutes.addNewDebtView),
      child: Icon(FontAwesomeIcons.plus, color: Colors.black),
    );
  }
}
