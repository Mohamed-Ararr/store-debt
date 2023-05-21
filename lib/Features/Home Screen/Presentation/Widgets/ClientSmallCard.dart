import 'package:flutter/material.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import 'ClientInfo.dart';
import 'PriceCard.dart';

class ClientSmallCard extends StatelessWidget {
  const ClientSmallCard({super.key, required this.client});

  final ClientModel client;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          ClientInfo(client: client),
          PriceCard(client: client),
        ],
      ),
    );
  }
}
