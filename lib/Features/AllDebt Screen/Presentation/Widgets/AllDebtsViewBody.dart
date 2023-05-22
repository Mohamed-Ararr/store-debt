import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';
import 'package:storedebt/Features/AllDebt%20Screen/Presentation/Widgets/DebtListView.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/AddNewDebtButton.dart';

import '../../../../Core/Style Utils/AppColors.dart';
import 'DebtClientCard.dart';

class AllDebtsViewBody extends StatelessWidget {
  const AllDebtsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddNewDebtButton(
        backgroundColor: AppColors.lightGreen,
      ),
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () => GoRouter.of(context).pop(),
          child: Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
        ),
        title: Text(
          "ديون المحل",
          style: AppFonts.miniAppTitleStyleBlack,
        ),
      ),
      body: Padding(
        padding: paddingLR15,
        child: DebtListView(),
      ),
    );
  }
}
