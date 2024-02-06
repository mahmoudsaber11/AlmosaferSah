import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/features/layout/presentations/cubit/layout_cubit.dart';
import 'package:almosafer_sah/features/layout/presentations/cubit/layout_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          icon: Icon(
            Icons.home_outlined,
            size: 24.sp,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              size: 24.sp,
            ),
            label: "Favorite"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 24.sp,
            ),
            label: "Profile"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              size: 24.sp,
            ),
            label: "Settings"),
      ],
    );
  }
}
