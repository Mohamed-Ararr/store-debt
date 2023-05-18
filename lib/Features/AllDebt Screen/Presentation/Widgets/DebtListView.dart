import 'package:flutter/material.dart';

import 'DebtClientCard.dart';

class DebtListView extends StatelessWidget {
  const DebtListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return DebtClientCard();
      },
    );
  }
}
