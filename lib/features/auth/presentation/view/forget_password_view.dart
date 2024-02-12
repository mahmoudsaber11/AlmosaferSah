import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
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
            MySizedBox.height16,
            Text(
              S.of(context).forgetPassword,
              style: AppStyles.textStyle24SemiBold,
            ),
            MySizedBox.height16,
            Text(
              S.of(context).forgetSubTitle,
              style: AppStyles.textStyle10Regular.copyWith(fontSize: 12.sp),
            ),
            MySizedBox.height40,
            const ForgetPasswordForm(),
            MySizedBox.height24,
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
            MySizedBox.height24,
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
