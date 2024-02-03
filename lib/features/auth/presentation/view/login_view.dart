import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_navigator.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_button_social.dart';
import 'package:almosafer_sah/features/auth/presentation/widgets/login/login_form.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .07.h,
            ),
            Image.asset(AppAssets.signIn),
            SizedBox(
              height: 16.h,
            ),
            Text(
              S.of(context).loginTitle,
              style: AppStyles.textStyle24SemiBold,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              S.of(context).loginSubTitle,
              style: AppStyles.textStyle10Regular,
            ),
            const LoginForm(),
            SizedBox(
              height: 24.h,
            ),
            Text(S.of(context).or),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonSocial(
                    image: AppAssets.iconFace,
                    text: S.of(context).faceBook,
                    color: Colors.blue,
                  ),
                  CustomButtonSocial(
                    image: AppAssets.iconGoogle,
                    text: S.of(context).google,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).notAccount,
                  style: AppStyles.textStyle14Medium,
                ),
                InkWell(
                  onTap: () {
                    context.navigateTo(routeName: Routes.signUpViewRoute);
                  },
                  child: Text(
                    S.of(context).signUp,
                    style: AppStyles.textStyle14Medium
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
