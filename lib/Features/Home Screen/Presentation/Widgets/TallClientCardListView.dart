import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storedebt/Core/General%20Utils/EmptyListWidget.dart';
import 'package:storedebt/Core/General%20Utils/LoadingWidget.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';

import '../../../../Core/Style Utils/AppFonts.dart';
import '../../../../Data/Models/Client Model/ClientModel.dart';
import 'TallClientCard.dart';

class TallClientCardListView extends StatelessWidget {
  const TallClientCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientCubit, ClientState>(
      builder: (context, state) {
        if (state is ClientSuccess) {
          if (state.clientList.isEmpty) {
            return EmptyListWidget(style: AppFonts.regular20BoldWhite);
          } else {
            List<ClientModel> newList = [...state.clientList];
            newList.sort((a, b) =>
                b.orderDate.toString().compareTo(a.orderDate.toString()));
            return Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: newList.length,
                itemBuilder: (context, index) {
                  return TallClientCard(client: newList[index]);
                },
              ),
            );
          }
        } else if (state is ClientFailure) {
          return Text(state.errorMsg);
        } else {
          return LoadingWidget();
        }
      },
    );
  }
}
