import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/helpers/cache_helper.dart';
import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/functions/app_navigator.dart';
import 'package:almosafer_sah/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:almosafer_sah/features/on_boarding/data/repositories/on_boarding_repo.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:almosafer_sah/service_locator.dart';
import 'package:flutter/material.dart';

class OnBoardingRepoImpl implements OnBoardingRepo {
  @override
  List<OnBoardingModel> onBoardingPages({required BuildContext context}) {
    return <OnBoardingModel>[
      OnBoardingModel(
          title: S.of(context).titleOnBoarding1,
          image: AppAssets.onBoarding1,
          subTitle: S.of(context).subTitleOnBoarding1),
      OnBoardingModel(
          title: S.of(context).titleOnBoarding2,
          image: AppAssets.onBoarding2,
          subTitle: S.of(context).subTitleOnBoarding2),
      OnBoardingModel(
          title: S.of(context).titleOnBoarding3,
          image: AppAssets.onBoarding3,
          subTitle: S.of(context).subTitleOnBoarding3),
    ];
  }

  @override
  void navigateBetweenPages(
      {required BuildContext context,
      required PageController pageController,
      required bool isLastBoarding}) {
    if (isLastBoarding) skipToLogin(context: context);
    pageController.nextPage(
        duration: const Duration(seconds: 1),
        curve: Curves.fastEaseInToSlowEaseOut);
  }

  @override
  void skipToLogin({required BuildContext context}) {
    serviceLocator
        .get<CacheHelper>()
        .saveData(key: 'onBoarding', value: true)
        .then(
      (value) {
        if (value) {
          context.navigateAndReplacement(newRoute: Routes.loginViewRoute);
        }
      },
    );
  }
}
