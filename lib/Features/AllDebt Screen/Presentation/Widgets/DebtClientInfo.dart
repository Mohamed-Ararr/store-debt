import 'package:flutter/material.dart';

import '../../../../Core/Style Utils/AppFonts.dart';
import '../../../Home Screen/Presentation/Widgets/ClinetAvatar.dart';

class DebtClientInfo extends StatelessWidget {
  const DebtClientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClientAvatar(),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "محمد عرعار",
                  style: AppFonts.defaultWithBoldWhite,
                ),
                Text("مدفوع", style: AppFonts.font_15_white),
                Text("25 ديسمبر 2023", style: AppFonts.font_15_white),
              ],
            ),
          ],
        ),
        Text(
          "1200,00 Dz",
          style: AppFonts.defaultWithBoldWhite,
        ),
      ],
    );
  }
}
