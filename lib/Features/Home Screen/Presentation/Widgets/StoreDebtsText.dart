import 'package:flutter/material.dart';

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
          onTap: () {},
          child: Text(
            "${getLang(context, "see-all-debts")}",
            style: AppFonts.font_14_grey,
          ),
        ),
      ],
    );
  }
}
