import 'dart:async';

import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/helpers/cache_helper.dart';
import 'package:almosafer_sah/core/helpers/helper.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/app_string.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:almosafer_sah/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late Timer _timer;
  void _startDelay() {
    _timer = Timer(const Duration(milliseconds: 2500), () => _goToNext());
  }

  void _goToNext() {
    Helper.uId = serviceLocator
        .get<CacheHelper>()
        .getStringData(key: AppString.cachedUserId);

    //  bool? onBoarding = serviceLocator
    //   .get<CacheHelper>()
    //    .getBoolData(key: AppString.cachedOnboarding);
    context.navigateAndReplacement(newRoute: Routes.onBoardingViewRoute);
    // if (onBoarding != null) {
    //   if (Helper.uId != null) {
    //     context.navigateAndReplacement(
    //       newRoute: Routes.layoutViewRoute,
    //     );
    //   } else {
    //     context.navigateAndReplacement(newRoute: Routes.loginViewRoute);
    //   }
    // } else {
    //   context.navigateAndReplacement(newRoute: Routes.onBoardingViewRoute);
    // }
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final double bottomPadding = View.of(context).viewPadding.bottom;

    // Set the color based on the presence of the system navigation bar
    final Color? systemNavigationBarColor =
        bottomPadding > 0 ? null : Colors.transparent;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    _setSystemUIOverlayStyle();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            S.of(context).app_logo,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
