import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storedebt/Core/Custom%20Mades/CustomEditOwnerButton.dart';
import 'package:storedebt/Core/Custom%20Mades/CustomOwnerAvatar.dart';
import 'package:storedebt/Core/General%20Utils/LoadingWidget.dart';
import 'package:storedebt/Data/Cubits/Owner%20Cubit/Fetch%20Owner%20Cubit/owner_cubit.dart';

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
              CustomOwnerAvatar(),
              BlocBuilder<OwnerCubit, OwnerState>(
                builder: (context, state) {
                  if (state is OwnerSuccess) {
                    return Text(
                      "${state.owner.ownerFN} ${state.owner.ownerLN}",
                      style: AppFonts.font_18_black_bold,
                    );
                  } else if (state is OwnerFailure) {
                    return Center(child: Text(state.errorMsg));
                  } else {
                    return LoadingWidget();
                  }
                },
              ),
              CustomEditOwnerButton(),
            ],
          ),
        ),
      ],
    );
  }
}
