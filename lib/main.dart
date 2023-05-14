import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:storedebt/Core/AppLocal.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';

import 'Features/Splash Screen/Presentation/SplashView.dart';

void main() {
  runApp(const DebtApp());
}

class DebtApp extends StatelessWidget {
  const DebtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "DZ"),
        Locale("en", "US"),
        // Locale("fr", "FR"),
      ],
      // locale: Locale("en", "US"),
      localeResolutionCallback: (currentLang, supportedLang) {
        if (currentLang != null) {
          for (Locale local in supportedLang) {
            if (local.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportedLang.first;
      },
      theme: ThemeData(
        fontFamily: "Tajawal",
        canvasColor: AppColors.purpleColor,
      ),
      home: SplashView(),
    );
  }
}
