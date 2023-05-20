import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';

import 'TallClientCard.dart';

class TallClientCardListView extends StatelessWidget {
  const TallClientCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientCubit, ClientState>(
      builder: (context, state) {
        if (state is ClientSuccess) {
          if (state.clientList.isEmpty) {
            return Center(child: Text("Empty"));
          } else {
            return Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: state.clientList.length,
                itemBuilder: (context, index) {
                  return TallClientCard(client: state.clientList[index]);
                },
              ),
            );
          }
        } else if (state is ClientFailure) {
          return Text(state.errorMsg);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
