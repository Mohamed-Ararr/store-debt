import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/AppLocal.dart';
import 'package:storedebt/Core/Routing%20Utils/routes.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';
import 'package:storedebt/Data/Cubits/Owner%20Cubit/Fetch%20Owner%20Cubit/owner_cubit.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import 'Core/General Utils/stateObersrver.dart';
import 'Data/Models/Owner Model/OwnerModel.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ClientModelAdapter());
  Hive.registerAdapter(OwnerModelAdapter());

  await Hive.openBox<ClientModel>(clientBox);
  await Hive.openBox<OwnerModel>(ownerBox);

  Bloc.observer = StateObserver();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const DebtApp());
}

class DebtApp extends StatelessWidget {
  const DebtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ClientCubit()..fetchClients(),
        ),
        BlocProvider(
          create: (context) => OwnerCubit()..fetchOwner(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.routes,
        localizationsDelegates: [
          AppLocale.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar", "DZ"),
          // Locale("en", "US"),
          // Locale("fr", "FR"),
        ],
        locale: Locale("ar", "DZ"),
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
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.purpleColor,
          ),
          fontFamily: "Tajawal",
          canvasColor: AppColors.purpleColor,
        ),
      ),
    );
  }
}
