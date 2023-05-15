import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'package:storedebt/Features/Home%20Screen/Presentation/Widgets/DebtsStats.dart';

import '../../../../Core/AppLocal.dart';
import '../../../../Core/Style%20Utils/AppFonts.dart';
import 'TallClientCardListView.dart';

import '../../../../Constants.dart';
import 'AddNewDebtButton.dart';
import 'GreetAndSearchCard.dart';
import 'SmallClientListView.dart';
import 'StoreDebtsText.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      drawer: Container(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: paddingLR15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              GreetAndSearchCard(),
              SizedBox(height: 25),
              Text(
                "${getLang(context, 'biggest-debts')}",
                style: AppFonts.regular20BoldWhite,
              ),
              SizedBox(height: 10),
              SmallClientListView(),
              SizedBox(height: 25),
              StoreDebtsText(),
              SizedBox(height: 10),
              TallClientCardListView(),
              SizedBox(height: 25),
              Text(
                "${getLang(context, "debt-stats")}",
                style: AppFonts.regular20BoldWhite,
              ),
              SizedBox(height: 10),
              DebtsStats(title: "الديون", percentageBar: .5),
              SizedBox(height: 10),
              DebtsStats(title: "الدفع", percentageBar: .4),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
