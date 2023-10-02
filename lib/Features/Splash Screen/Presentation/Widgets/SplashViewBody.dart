import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Core/Routing%20Utils/routes.dart';
import 'package:storedebt/Features/Splash%20Screen/Presentation/Widgets/AppLogoAndTitle.dart';
import 'package:storedebt/Features/Splash%20Screen/Presentation/Widgets/AppSlogan.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 1500),
      () => GoRouter.of(context).push(AppRoutes.homeView),
    );
  }

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
