import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Core/Routing%20Utils/routes.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import 'DebtClientCard.dart';

class DebtClientCardWithSlidable extends StatelessWidget {
  const DebtClientCardWithSlidable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slidable(
          startActionPane: ActionPane(
            extentRatio: 1,
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                onPressed: (context) =>
                    GoRouter.of(context).push(AppRoutes.editClientView),
                borderRadius: bRadius10.copyWith(
                  topLeft: Radius.zero,
                  bottomLeft: Radius.zero,
                ),
                backgroundColor: AppColors.greyColor,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: 'تعديل',
              ),
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: AppColors.lightGreen,
                foregroundColor: Colors.white,
                icon: Icons.paid_outlined,
                label: 'تم الدفع',
              ),
              SlidableAction(
                onPressed: (context) {},
                borderRadius: bRadius10.copyWith(
                  topRight: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                backgroundColor: AppColors.redColor,
                foregroundColor: Colors.white,
                icon: Icons.delete_outline,
                label: 'حذف',
              ),
            ],
          ),
          child: DebtClientCard(),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
