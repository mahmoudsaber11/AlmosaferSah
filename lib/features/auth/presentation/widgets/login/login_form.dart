import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/helpers/helper.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_button.dart';
import 'package:almosafer_sah/core/widgets/custom_text_field.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/login/login_state.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<LoginCubit>(context);
        return Form(
          key: cubit.formKey,
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 18.w, top: 24.h),
            child: Column(
              children: [
                CustomTextField(
                    validate: (String? value) =>
                        Helper.validateEmailField(value),
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => FocusScope.of(context)
                        .requestFocus(cubit.passwordFocusNode),
                    autofillHints: const [AutofillHints.email],
                    focusNode: cubit.emailFocusNode,
                    hintText: "example@gmail.com",
                    prefix: Icon(
                      Icons.email_outlined,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: cubit.emailController),
                MySizedBox.height16,
                CustomTextField(
                    autofillHints: const <String>[AutofillHints.password],
                    validate: (String? value) =>
                        Helper.validatePasswordField(value),
                    focusNode: cubit.passwordFocusNode,
                    isPassword: cubit.isPassword,
                    // onSubmit: (_) => _login(context),
                    suffix: IconButton(
                        onPressed: () {
                          cubit.changePasswordVisibility();
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
                MySizedBox.height16,
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => context.navigateTo(
                        routeName: Routes.forgetPasswordViewRoute),
                    child: Text(
                      S.of(context).forgetPassword,
                      style: AppStyles.textStyle10Regular
                          .copyWith(color: AppColors.textColor),
                    ),
                  ),
                ),
                MySizedBox.height32,
                CustomGeneralButton(
                  width: 170.w,
                  text: S.of(context).textButtonLogin,
                  onPressed: () =>
                      context.navigateTo(routeName: Routes.layoutViewRoute),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
