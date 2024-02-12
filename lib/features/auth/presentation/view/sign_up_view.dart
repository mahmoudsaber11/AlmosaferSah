import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/features/auth/presentation/widgets/sign_up/sign_up_form.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1.h,
            ),
            Text(
              S.of(context).signUpTitle,
              style: AppStyles.textStyle24SemiBold,
            ),
            MySizedBox.height16,
            Text(
              S.of(context).signUpSubTitle,
              style: AppStyles.textStyle10Regular,
            ),
            const SignUpForm(),
            MySizedBox.height32,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).textHaveAccount,
                  style: AppStyles.textStyle14Medium,
                ),
                InkWell(
                  onTap: () =>
                      context.navigateTo(routeName: Routes.loginViewRoute),
                  child: Text(
                    S.of(context).login,
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
