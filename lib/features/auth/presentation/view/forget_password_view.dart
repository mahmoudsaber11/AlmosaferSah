import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_navigator.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/features/auth/presentation/widgets/forget_password/forget_password_form.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () => context.getBack(),
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.greyColor,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 18.w),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Text(
              S.of(context).forgetPassword,
              style: AppStyles.textStyle24SemiBold,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              S.of(context).forgetSubTitle,
              style: AppStyles.textStyle10Regular.copyWith(fontSize: 12.sp),
            ),
            SizedBox(
              height: 40.h,
            ),
            const ForgetPasswordForm(),
            SizedBox(
              height: 24.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {},
                child: Text(
                  S.of(context).sendEmail,
                  style: AppStyles.textStyle10Regular.copyWith(fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).notAccount,
                  style: AppStyles.textStyle14Medium,
                ),
                InkWell(
                  onTap: () =>
                      context.navigateTo(routeName: Routes.signUpViewRoute),
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
