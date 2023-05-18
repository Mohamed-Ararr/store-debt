import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

import '../../../../Constants.dart';
import '../../../../Core/Routing Utils/routes.dart';
import '../../../../Core/Style Utils/AppColors.dart';
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
