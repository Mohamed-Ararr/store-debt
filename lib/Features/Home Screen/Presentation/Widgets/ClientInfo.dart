import 'package:flutter/material.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/ClinetAvatar.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';

class ClientInfo extends StatelessWidget {
  const ClientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: AppColors.whiteColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClientAvatar(),
            Text(
              "محمد اسلام عرعار",
              style: AppFonts.defaultWithBold,
            ),
            Text("مدفوع"),
            Text("25 ديسمبر 2023"),
          ],
        ),
      ),
    );
  }
}
