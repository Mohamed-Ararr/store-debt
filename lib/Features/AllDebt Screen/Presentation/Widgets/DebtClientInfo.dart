import 'package:flutter/material.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Core/Style Utils/AppFonts.dart';
import '../../../Home Screen/Presentation/Widgets/ClinetAvatar.dart';

class DebtClientInfo extends StatelessWidget {
  const DebtClientInfo({super.key, required this.client});

  final ClientModel client;

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
                  "${client.clientFN} ${client.clientLN}",
                  style: AppFonts.defaultWithBoldWhite,
                ),
                Text(client.isPaid ? "مدفوع" : "غير مدفوع",
                    style: AppFonts.font_15_white),
                Text(client.date, style: AppFonts.font_15_white),
              ],
            ),
          ],
        ),
        Text(
          "${client.price} Dz",
          style: AppFonts.defaultWithBoldWhite,
        ),
      ],
    );
  }
}
