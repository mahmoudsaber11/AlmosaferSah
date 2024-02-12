import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_button.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/otp/otp_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/otp/otp_state.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class VerificationViewForm extends StatelessWidget {
  const VerificationViewForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OTPCubit, OTPState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(S.of(context).OTPCode,
                      style: AppStyles.textStyle20Medium)),
              MySizedBox.height24,
              Pinput(
                controller: BlocProvider.of<OTPCubit>(context).otpController,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: PinTheme(
                  width: 72.w,
                  height: 70.h,
                  textStyle: TextStyle(
                    fontSize: 22.sp,
                    color: AppColors.textColor,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                ),
                separatorBuilder: (index) => MySizedBox.width20,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Pin is Empty";
                  }
                  return null;
                },
              ),
              MySizedBox.height40,
              CustomGeneralButton(
                  width: 153.w,
                  text: S.of(context).OTPVerify,
                  onPressed: () => context.navigateTo(
                      routeName: Routes.resetPasswordViewRoute))
            ],
          ),
        );
      },
    );
  }
}
