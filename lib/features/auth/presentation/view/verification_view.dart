import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/features/auth/presentation/widgets/verification/verification_view_form.dart';
import 'package:almosafer_sah/generated/l10n.dart';
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
            MySizedBox.height16,
            Text(
              S.of(context).OTPTitle,
              style: AppStyles.textStyle24SemiBold,
            ),
            MySizedBox.height16,
            Text(
              S.of(context).OTPSubTitle,
              style: AppStyles.textStyle10Regular.copyWith(fontSize: 12.sp),
            ),
            MySizedBox.height50,
            const VerificationViewForm()
          ],
        ),
      ),
    );
  }
}
