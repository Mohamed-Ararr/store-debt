import 'package:flutter/material.dart';

import 'ClientInfo.dart';
import 'PriceCard.dart';

class ClientSmallCard extends StatelessWidget {
  const ClientSmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            ClientInfo(),
            PriceCard(),
          ],
        ),
      ),
    );
  }
}
