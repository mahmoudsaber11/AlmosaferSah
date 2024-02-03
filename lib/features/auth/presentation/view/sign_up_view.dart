import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
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
            SizedBox(
              height: 16.h,
            ),
            Text(
              S.of(context).signUpSubTitle,
              style: AppStyles.textStyle10Regular,
            ),
            const SignUpForm(),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).textHaveAccount,
                  style: AppStyles.textStyle14Medium,
                ),
                InkWell(
                  onTap: () {},
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
