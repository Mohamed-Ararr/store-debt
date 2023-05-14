import 'package:flutter/material.dart';

import 'Features/Splash Screen/Presentation/SplashView.dart';

void main() {
  runApp(const DebtApp());
}

class DebtApp extends StatelessWidget {
  const DebtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}
