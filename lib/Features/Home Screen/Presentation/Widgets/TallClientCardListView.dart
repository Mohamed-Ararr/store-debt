import 'package:flutter/material.dart';

import 'TallClientCard.dart';

class TallClientCardListView extends StatelessWidget {
  const TallClientCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return TallClientCard();
        },
      ),
    );
  }
}
