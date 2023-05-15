import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/AppLocal.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/ClientInfo.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/ClientSmallCard.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/PriceCard.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/SmallClientListView.dart';

import 'GreetAndSearchCard.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "${getLang(context, "app-title")}",
          style: AppFonts.miniAppTitleStyle,
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: InkWell(
              onTap: () {},
              child: Icon(FontAwesomeIcons.user),
            ),
          ),
        ],
      ),
      drawer: Container(),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingLR15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              GreetAndSearchCard(),
              SizedBox(height: 20),
              Text(
                "${getLang(context, 'biggest-debts')}",
                style: AppFonts.regular20BoldWhite,
              ),
              SizedBox(height: 10),
              SmallClientListView(),
            ],
          ),
        ),
      ),
    );
  }
}
