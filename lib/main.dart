import 'package:flutter/material.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'dart:ui' as ui;

import 'Features/Splash Screen/Presentation/SplashView.dart';

void main() async {
  await ui.TextDirection.rtl;
  runApp(const DebtApp());
}

class DebtApp extends StatelessWidget {
  const DebtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Tajawal",
        canvasColor: AppColors.purpleColor,
      ),
      home: SplashView(),
    );
  }
}
