import 'package:almosafer_sah/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';

abstract class OnBoardingRepo {
  List<OnBoardingModel> onBoardingPages({required BuildContext context});

  void navigateBetweenPages({
    required BuildContext context,
    required PageController pageController,
    required bool isLastBoarding,
  });

  void skipToLogin({required BuildContext context});
}
