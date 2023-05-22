import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Core/Routing%20Utils/routes.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import '../../../../Data/Cubits/Client Cubit/Fetch Client Cubit/client_cubit.dart';
import 'DebtClientCard.dart';

class DebtClientCardWithSlidable extends StatelessWidget {
  const DebtClientCardWithSlidable({super.key, required this.client});

  final ClientModel client;

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
                onPressed: (context) {
                  GoRouter.of(context).push(
                    AppRoutes.editClientView,
                    extra: client,
                  );
                },
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
                onPressed: (context) {
                  client.isPaid = !client.isPaid;
                  client.save();
                  BlocProvider.of<ClientCubit>(context).fetchClients();
                },
                backgroundColor: AppColors.lightGreen,
                foregroundColor: Colors.white,
                icon: Icons.paid_outlined,
                label: client.isPaid ? "غير مدفوع" : "مدفوع",
              ),
              SlidableAction(
                onPressed: (context) {
                  client.delete();
                  BlocProvider.of<ClientCubit>(context).fetchClients();
                },
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
          child: DebtClientCard(client: client),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
