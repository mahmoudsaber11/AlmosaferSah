import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.signIn),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Welcome Back!",
              style: AppStyles.textStyle24SemiBold,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Login to your  existing  account",
              style: AppStyles.textStyle10Regular,
            ),
          ],
        ),
      ),
    );
  }
}
