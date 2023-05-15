import 'package:flutter/material.dart';

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
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(),
                color: AppColors.beigeColor,
                borderRadius: bRadiusHalf,
              ),
              child: Image.asset(
                clientAvatar,
                scale: 1.1,
              ),
            ),
            Text(
              "محمد اسلام عرعار",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("مدفوع"),
            Text("25 ديسمبر 2023"),
          ],
        ),
      ),
    );
  }
}
