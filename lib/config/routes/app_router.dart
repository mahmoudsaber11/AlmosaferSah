import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const SplashView());

      // case Routes.onBoardingViewRoute:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //           create: (context) => serviceLocator.get<OnBoardingCubit>(),
      //           child: const OnBoardingView()));

      default:
        return _unFoundRoute();
    }
  }

  static Route<dynamic> _unFoundRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            "Un Found Route",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
