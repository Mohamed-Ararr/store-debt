import 'package:flutter/material.dart';

import '../../../../Core/AppLocal.dart';

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
              Image.asset(
                "assets/images/appLogo.png",
                scale: 1.5,
              ),
              SizedBox(height: 10),
              Text(
                "${getLang(context, 'greet')}",
                style: TextStyle(fontSize: 35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
