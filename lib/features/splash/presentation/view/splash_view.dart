import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/features/splash/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.textColor,
      body: SplashViewBody(),
    );
  }
}
