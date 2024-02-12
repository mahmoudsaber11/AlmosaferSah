import 'package:almosafer_sah/core/utils/app_assets.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/features/layout/presentations/cubit/layout_cubit.dart';
import 'package:almosafer_sah/features/layout/presentations/cubit/layout_state.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LayoutCubit>(context);
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return Scaffold(
          body: cubit.views()[cubit.currentIndex],
          bottomNavigationBar: bottomNavBar(cubit, context),
        );
      },
    );
  }

  BottomNavigationBar bottomNavBar(LayoutCubit cubit, BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      selectedItemColor: AppColors.primaryColor,
      unselectedIconTheme: const IconThemeData(color: AppColors.greyColor),
      unselectedLabelStyle: AppStyles.textStyle10Regular.copyWith(
        fontWeight: FontWeight.bold,
      ),
      currentIndex: cubit.currentIndex,
      onTap: (value) {
        cubit.changeBottomNav(value, context);
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(AppAssets.iconActiveHome),
          icon: SvgPicture.asset(AppAssets.iconHome),
          label: S.of(context).home,
        ),
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppAssets.iconActiveTrips),
            icon: SvgPicture.asset(AppAssets.iconTrips),
            label: S.of(context).trips),
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppAssets.iconActiveFavorite),
            icon: SvgPicture.asset(AppAssets.iconFavorite),
            label: S.of(context).favorite),
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppAssets.iconActiveProfile),
            icon: SvgPicture.asset(AppAssets.iconProfile),
            label: S.of(context).profile),
      ],
    );
  }
}
