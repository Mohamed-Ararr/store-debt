import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/images/appLogo.png",
              scale: 1.5,
            ),
            Text("مرحبا بك في تطبيقنا", style: TextStyle(fontSize: 35)),
          ],
        ),
      ),
    );
  }
}
