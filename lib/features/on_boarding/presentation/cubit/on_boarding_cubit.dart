import 'package:almosafer_sah/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:almosafer_sah/features/on_boarding/data/repositories/on_boarding_repo.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/cubit/on_boarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit({required this.onBoardingRepo})
      : super(const OnBoardingInitial());

  final OnBoardingRepo onBoardingRepo;
  bool isLastBoarding = false;
  List<OnBoardingModel> onBoardingPages({required BuildContext context}) {
    return onBoardingRepo.onBoardingPages(context: context);
  }

  void onChangePageIndex(int index, {required BuildContext context}) {
    if (index == onBoardingPages(context: context).length - 1) {
      isLastBoarding = true;
    } else {
      isLastBoarding = false;
    }
    emit(PageViewIndexChanged(index: index));
  }

  void navigateBetweenPages({
    required BuildContext context,
    required PageController pageController,
  }) {
    onBoardingRepo.navigateBetweenPages(
        context: context,
        pageController: pageController,
        isLastBoarding: isLastBoarding);
    emit(const NavigateBetweenPages());
  }

  void skipToLogin({required BuildContext context}) {
    onBoardingRepo.skipToLogin(context: context);

    emit(const SkipToLogin());
  }
}
