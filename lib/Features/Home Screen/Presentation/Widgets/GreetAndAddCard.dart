import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storedebt/Core/General%20Utils/LoadingWidget.dart';
import 'package:storedebt/Data/Cubits/Owner%20Cubit/Fetch%20Owner%20Cubit/owner_cubit.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/AddNewDebtButton.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';

class GreetAndAddCard extends StatelessWidget {
  const GreetAndAddCard({super.key});

  @override
  Widget build(BuildContext context) {
    String ownerFN;
    return Container(
      padding: paddingAll15,
      decoration: BoxDecoration(
        borderRadius: bRadius10,
        color: AppColors.lightGreen,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocConsumer<OwnerCubit, OwnerState>(
            listener: (context, state) {},
            builder: (context, state) {
              state is OwnerSuccess
                  ? ownerFN = state.owner.ownerFN
                  : ownerFN = "User";
              return Text(
                "مرحبا ${ownerFN}\nأرجو أن تحظى بيوم رائع",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              );
            },
          ),
          AddNewDebtButton(backgroundColor: AppColors.whiteColor),
        ],
      ),
    );
  }
}
