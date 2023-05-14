import "package:go_router/go_router.dart";
import "package:storedebt/Features/Home%20Screen/Presentation/HomeView.dart";
import "package:storedebt/Features/Splash%20Screen/Presentation/SplashView.dart";

class AppRoutes {
  static String homeView = "/homeScreen";

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
    ],
  );
}
