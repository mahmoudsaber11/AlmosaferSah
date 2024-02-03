import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_navigator.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/features/auth/presentation/widgets/verification/verification_view_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

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
              "OTP Verification",
              style: AppStyles.textStyle24SemiBold,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              " We’ve sent a code to Example@gmail.com ",
              style: AppStyles.textStyle10Regular.copyWith(fontSize: 12.sp),
            ),
            SizedBox(
              height: 52.h,
            ),
            const VerificationViewForm()
          ],
        ),
      ),
    );
  }
}
