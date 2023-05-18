import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'package:storedebt/Features/AllDebt%20Screen/Presentation/Widgets/DebtClientCardWithSlidable.dart';
import 'DebtClientCard.dart';

class DebtListView extends StatelessWidget {
  const DebtListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return DebtClientCardWithSlidable();
      },
    );
  }
}
