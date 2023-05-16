import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Core/Routing%20Utils/routes.dart';

import '../../../../Core/AppLocal.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class StoreDebtsText extends StatelessWidget {
  const StoreDebtsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${getLang(context, "store-debts")}",
          style: AppFonts.regular20BoldWhite,
        ),
        InkWell(
          onTap: () => GoRouter.of(context).push(AppRoutes.allDebtsView),
          child: Text(
            "${getLang(context, "see-all-debts")}",
            style: AppFonts.font_14_grey,
          ),
        ),
      ],
    );
  }
}
