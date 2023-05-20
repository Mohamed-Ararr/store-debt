import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Constants.dart';
import '../../../../Core/Routing Utils/routes.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import 'TallClientInfo.dart';

class TallClientCard extends StatelessWidget {
  const TallClientCard({super.key, required this.client});

  final ClientModel client;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Slidable(
          direction: Axis.vertical,
          startActionPane: ActionPane(
            extentRatio: 1,
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                onPressed: (context) =>
                    GoRouter.of(context).push(AppRoutes.editClientView),
                borderRadius: bRadius10.copyWith(
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
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
                  topLeft: Radius.zero,
                ),
                backgroundColor: AppColors.redColor,
                foregroundColor: Colors.white,
                icon: Icons.delete_outline,
                label: 'حذف',
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            width: MediaQuery.of(context).size.width * 0.28,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.whiteColor),
              borderRadius: bRadius10,
            ),
            child: TallClientInfo(client: client),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
