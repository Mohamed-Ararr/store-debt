import "package:go_router/go_router.dart";
import "package:storedebt/Features/Home%20Screen/Presentation/HomeView.dart";
import "package:storedebt/Features/Splash%20Screen/Presentation/SplashView.dart";

import "../../Features/AllDebt Screen/Presentation/AllDebtsView.dart";

class AppRoutes {
  static String homeView = "/homeView";
  static String allDebtsView = "/allDebtsView";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: allDebtsView,
        builder: (context, state) => const AllDebtsView(),
      ),
    ],
  );
}
