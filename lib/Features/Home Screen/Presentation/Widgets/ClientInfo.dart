import 'package:flutter/material.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/ClinetAvatar.dart';

import '../../../../Core/Style Utils/AppColors.dart';

class ClientInfo extends StatelessWidget {
  const ClientInfo({super.key, required this.client});

  final ClientModel client;

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
              "${client.clientFN} ${client.clientLN}",
              style: AppFonts.defaultWithBold,
            ),
            Text(client.isPaid ? "مدفوع" : "غير مدفوع",
                style: AppFonts.defaultWithBlack),
            Text(client.date, style: AppFonts.defaultWithBlack),
          ],
        ),
      ),
    );
  }
}
