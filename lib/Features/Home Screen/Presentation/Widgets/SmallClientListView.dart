import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storedebt/Core/General%20Utils/EmptyListWidget.dart';
import 'package:storedebt/Core/General%20Utils/LoadingWidget.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import 'ClientSmallCard.dart';

class SmallClientListView extends StatelessWidget {
  const SmallClientListView({super.key});

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
                double.parse(b.price).compareTo(double.parse(a.price)));

            return Container(
              height: MediaQuery.of(context).size.height * 0.215,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: newList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ClientSmallCard(client: newList[index]);
                },
              ),
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
