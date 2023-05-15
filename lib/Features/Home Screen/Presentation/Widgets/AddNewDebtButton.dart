import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Core/Style Utils/AppColors.dart';

class AddNewDebtButton extends StatelessWidget {
  const AddNewDebtButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.beigeColor,
      onPressed: () {},
      child: Icon(FontAwesomeIcons.plus, color: Colors.black),
    );
  }
}
