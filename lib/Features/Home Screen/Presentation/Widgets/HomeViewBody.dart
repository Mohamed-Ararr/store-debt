import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storedebt/Core/AppLocal.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';

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
    );
  }
}
