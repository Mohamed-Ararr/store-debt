import 'package:flutter/material.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Core/Style Utils/AppColors.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({super.key, required this.client});

  final ClientModel client;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: AppColors.lightGreen,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            client.price,
            style: AppFonts.font_18_black_bold,
          ),
          SizedBox(width: 5),
          Text(
            "ستنيم",
            style: AppFonts.font_13.copyWith(color: Colors.black),
          ),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          //   decoration: BoxDecoration(
          //       color: AppColors.purpleColor,
          //       borderRadius: BorderRadius.circular(5)),
          //   child: InkWell(
          //     onTap: () {},
          //     child: Icon(
          //       FontAwesomeIcons.arrowLeft,
          //       size: 15,
          //       color: AppColors.whiteColor,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
