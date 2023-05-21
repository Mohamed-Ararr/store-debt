import 'package:flutter/material.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import '../../../../Core/Style Utils/AppFonts.dart';
import 'ClinetAvatar.dart';

class TallClientInfo extends StatelessWidget {
  const TallClientInfo({super.key, required this.client});

  final ClientModel client;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClientAvatar(),
        Text(
          "${client.clientFN} ${client.clientLN}",
          style: AppFonts.defaultWithBoldWhite,
          textAlign: TextAlign.center,
        ),
        Text(
          client.isPaid ? "مدفوع" : "غير مدفوع",
          style: AppFonts.font_15_white,
          textAlign: TextAlign.center,
        ),
        Text(
          client.date,
          style: AppFonts.font_13_grey,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: bRadius10,
            color: AppColors.lightGreen,
          ),
          child: Column(
            children: [
              Text(
                "${client.price}",
                textAlign: TextAlign.center,
                style: AppFonts.defaultWithBoldWhite,
              ),
              Text("سنتيم", style: AppFonts.font_13),
            ],
          ),
        ),
      ],
    );
  }
}
