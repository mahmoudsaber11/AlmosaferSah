import 'package:almosafer_sah/core/helpers/helper.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_button.dart';
import 'package:almosafer_sah/core/widgets/custom_text_field.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/sign_up/sign_up_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/sign_up/sign_up_state.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<SignUpCubit>(context);
        return Form(
          key: cubit.formKey,
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 18.w, top: 40.h),
            child: Column(
              children: [
                CustomTextField(
                    validate: Helper.validateEmailField,
                    keyboardType: TextInputType.name,
                    onEditingComplete: () => FocusScope.of(context)
                        .requestFocus(cubit.emailFocusNode),
                    autofillHints: const [AutofillHints.name],
                    focusNode: cubit.nameFocusNode,
                    hintText: S.of(context).textName,
                    prefix: Icon(
                      Icons.person_outline,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: cubit.phoneController),
                MySizedBox.height32,
                CustomTextField(
                    validate: (String? value) =>
                        Helper.validateEmailField(value),
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => FocusScope.of(context)
                        .requestFocus(cubit.phoneFocusNode),
                    autofillHints: const [AutofillHints.email],
                    focusNode: cubit.emailFocusNode,
                    hintText: S.of(context).textEmail,
                    prefix: Icon(
                      Icons.email_outlined,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: cubit.emailController),
                MySizedBox.height32,
                CustomTextField(
                    validate: (String? value) =>
                        Helper.validateEmailField(value),
                    keyboardType: TextInputType.phone,
                    onEditingComplete: () => FocusScope.of(context)
                        .requestFocus(cubit.passwordFocusNode),
                    autofillHints: const [AutofillHints.email],
                    focusNode: cubit.phoneFocusNode,
                    hintText: S.of(context).textPhone,
                    prefix: Icon(
                      Icons.mobile_friendly,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: cubit.phoneController),
                MySizedBox.height32,
                CustomTextField(
                    autofillHints: const <String>[AutofillHints.password],
                    validate: (String? value) =>
                        Helper.validatePasswordField(value),
                    focusNode: cubit.passwordFocusNode,
                    isPassword: cubit.isPassword,
                    onEditingComplete: () => FocusScope.of(context)
                        .requestFocus(cubit.confirmPasswordFocusNode),
                    // onSubmit: (_) => _login(context),
                    suffix: IconButton(
                        onPressed: () {
                          cubit.switchPassVisibility();
                        },
                        icon: Icon(
                          cubit.isPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.colorTextField,
                        )),
                    keyboardType: TextInputType.visiblePassword,
                    hintText: S.of(context).hintTextPassword,
                    prefix: Icon(
                      Icons.lock_outline,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: cubit.passwordController),
                MySizedBox.height32,
                CustomTextField(
                    autofillHints: const <String>[AutofillHints.password],
                    validate: (String? value) =>
                        Helper.validateConfirmPasswordField(
                          password: cubit.passwordController.text,
                          confirmPassword: cubit.confirmController.text,
                        ),
                    focusNode: cubit.confirmPasswordFocusNode,
                    isPassword: cubit.isConfirmPassVisible,
                    // onSubmit: (_) => _login(context),
                    suffix: IconButton(
                        onPressed: () {
                          cubit.switchConfirmPassVisibility();
                        },
                        icon: Icon(
                          cubit.isPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.colorTextField,
                        )),
                    keyboardType: TextInputType.visiblePassword,
                    hintText: S.of(context).textConfirmPassword,
                    prefix: Icon(
                      Icons.lock_outline,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: cubit.confirmController),
                MySizedBox.height32,
                CustomGeneralButton(
                  width: 170.w,
                  text: S.of(context).textButtonCreate,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
