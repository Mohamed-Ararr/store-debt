import 'package:flutter/material.dart';

import '../../../../Core/AppLocal.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                "assets/images/appLogo.png",
                scale: 1.3,
              ),
              SizedBox(height: 15),
              Text(
                "${getLang(context, 'app-title')}",
                style: AppFonts.appTitleStyle,
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * .8,
                child: Text(
                  "${getLang(context, "app-slogan")}",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
