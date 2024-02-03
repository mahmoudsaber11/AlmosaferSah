import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/sign_up/sign_up_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/view/login_view.dart';
import 'package:almosafer_sah/features/auth/presentation/view/sign_up_view.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:almosafer_sah/features/splash/presentation/view/splash_view.dart';
import 'package:almosafer_sah/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const SplashView());

      case Routes.onBoardingViewRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => serviceLocator.get<OnBoardingCubit>(),
                child: const OnBoardingView()));

      case Routes.loginViewRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => LoginCubit(), child: const LoginView()));

      case Routes.signUpViewRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => SignUpCubit(), child: const SignUpView()));

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
