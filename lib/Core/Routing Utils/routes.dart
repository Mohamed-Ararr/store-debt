import "package:go_router/go_router.dart";
import "package:storedebt/Features/Edit%20Owner%20Screen/Presentation/EditOwnerView.dart";
import "package:storedebt/Features/Home%20Screen/Presentation/HomeView.dart";
import "package:storedebt/Features/Splash%20Screen/Presentation/SplashView.dart";

import "../../Features/AllDebt Screen/Presentation/AllDebtsView.dart";

class AppRoutes {
  static String homeView = "/homeView";
  static String allDebtsView = "/allDebtsView";
  static String editOwnerView = "/editOwnerView";

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
      GoRoute(
        path: editOwnerView,
        builder: (context, state) => const EditOwnerView(),
      ),
    ],
  );
}
