import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_button.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/cubit/on_boarding_state.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/widgets/page_view_item.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        OnBoardingCubit cubit = BlocProvider.of<OnBoardingCubit>(context);
        return Column(
          children: [
            MySizedBox.height50,
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemBuilder: (context, index) => PageViewItem(
                  pageInfo: cubit.onBoardingPages(context: context)[index],
                ),
                itemCount: cubit.onBoardingPages(context: context).length,
                onPageChanged: (int index) {
                  cubit.onChangePageIndex(index, context: context);
                },
              ),
            ),
            CustomGeneralButton(
                width: 200.w,
                text: cubit.isLastBoarding
                    ? S.of(context).buttonGetStarted
                    : S.of(context).buttonNext,
                onPressed: () => _navigateAmongOnBoarding(context)),
            SizedBox(
              height: MediaQuery.of(context).size.height * .13.h,
            ),
          ],
        );
      },
    );
  }

  void _navigateAmongOnBoarding(BuildContext context) {
    if (BlocProvider.of<OnBoardingCubit>(context).isLastBoarding) {
      BlocProvider.of<OnBoardingCubit>(context).skipToLogin(context: context);
    } else {
      BlocProvider.of<OnBoardingCubit>(context).navigateBetweenPages(
        context: context,
        pageController: pageController,
      );
    }
  }
}
