import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_navigator.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/features/auth/presentation/widgets/reset_password/reset_password_view_form.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Text(
              S.of(context).resetTitle,
              style: AppStyles.textStyle24SemiBold,
            ),
            SizedBox(
              height: 58.h,
            ),
            const ResetPasswordForm()
          ],
        ),
      ),
    );
  }
}
