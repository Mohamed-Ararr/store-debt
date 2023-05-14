import 'package:flutter/material.dart';
import 'package:storedebt/Features/Splash%20Screen/Presentation/Widgets/AppLogoAndTitle.dart';
import 'package:storedebt/Features/Splash%20Screen/Presentation/Widgets/AppSlogan.dart';

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
              AppLogoAndTitle(),
              Spacer(),
              AppSlogan(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
