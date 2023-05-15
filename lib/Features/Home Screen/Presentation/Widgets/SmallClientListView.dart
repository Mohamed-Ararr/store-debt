import 'package:flutter/material.dart';

import 'ClientSmallCard.dart';

class SmallClientListView extends StatelessWidget {
  const SmallClientListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.215,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClientSmallCard();
        },
      ),
    );
  }
}
