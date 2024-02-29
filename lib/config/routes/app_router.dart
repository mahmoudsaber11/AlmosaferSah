import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/forget_password/forget_password_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/otp/otp_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/reset_password/reset_password_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/sign_up/sign_up_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/view/forget_password_view.dart';
import 'package:almosafer_sah/features/auth/presentation/view/login_view.dart';
import 'package:almosafer_sah/features/auth/presentation/view/reset_password_view.dart';
import 'package:almosafer_sah/features/auth/presentation/view/sign_up_view.dart';
import 'package:almosafer_sah/features/auth/presentation/view/verification_view.dart';
import 'package:almosafer_sah/features/destinations/presentation/view/destinations_view.dart';
import 'package:almosafer_sah/features/layout/presentations/cubit/layout_cubit.dart';
import 'package:almosafer_sah/features/layout/presentations/view/layout_view.dart';
import 'package:almosafer_sah/features/offers/presentation/view/offers_view.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:almosafer_sah/features/packages/presentation/view/packages_view.dart';
import 'package:almosafer_sah/features/popular_hotels/presentation/view/popular_hotels_view.dart';
import 'package:almosafer_sah/features/splash/presentation/view/splash_view.dart';
import 'package:almosafer_sah/features/tourism_services/presentation/view/tourism_services_view.dart';
import 'package:almosafer_sah/features/travel_products/presentation/view/travel_products_view.dart';
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

      case Routes.forgetPasswordViewRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => ForgetPasswordCubit(),
                child: const ForgetPasswordView()));

      case Routes.verificationViewRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => OTPCubit(),
                child: const VerificationView()));

      case Routes.resetPasswordViewRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => ResetPasswordCubit(),
                child: const ResetPasswordView()));

      case Routes.layoutViewRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => serviceLocator.get<LayoutCubit>(),
                child: const LayoutView()));

      case Routes.destinationsViewRoute:
        return MaterialPageRoute(
            builder: (context) => const DestinationsView());

      case Routes.offersViewRoute:
        return MaterialPageRoute(builder: (context) => const OffersView());

      case Routes.popularHotelsViewRoute:
        return MaterialPageRoute(
            builder: (context) => const PopularHotelsView());

      case Routes.tourismServicesViewRoute:
        return MaterialPageRoute(
            builder: (context) => const TourismServicesView());

      case Routes.travelProductsViewRoute:
        return MaterialPageRoute(
            builder: (context) => const TravelProductsView());

      case Routes.packagesViewRoute:
        return MaterialPageRoute(builder: (context) => const PackagesView());

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
