import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/General%20Utils/EmptyListWidget.dart';
import 'package:storedebt/Core/General%20Utils/LoadingWidget.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';
import 'package:storedebt/Features/AllDebt%20Screen/Presentation/Widgets/DebtClientCardWithSlidable.dart';
import '../../../../Data/Models/Client Model/ClientModel.dart';
import 'DebtClientCard.dart';

class DebtListView extends StatelessWidget {
  const DebtListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientCubit, ClientState>(
      builder: (context, state) {
        if (state is ClientSuccess) {
          if (state.clientList.isEmpty) {
            return EmptyListWidget();
          } else {
            List<ClientModel> newList = [...state.clientList];
            newList.sort((a, b) =>
                b.orderDate.toString().compareTo(a.orderDate.toString()));
            return ListView.builder(
              itemCount: newList.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return DebtClientCardWithSlidable(client: newList[index]);
              },
            );
          }
        } else if (state is ClientFailure) {
          return Center(child: Text(state.errorMsg));
        } else {
          return LoadingWidget();
        }
      },
    );
  }
}
