import 'package:almosafer_sah/core/helpers/helper.dart';
import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_button.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_text_field.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/reset_password/reset_password_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/reset_password/reset_password_state.dart';
import 'package:almosafer_sah/features/auth/presentation/widgets/reset_password/login_dialog.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<ResetPasswordForm> {
  final TextEditingController _confirmController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late final GlobalKey<FormState> _formKey;

  void _initFormAttributes() {
    _formKey = GlobalKey<FormState>();
  }

  @override
  void initState() {
    _initFormAttributes();
    super.initState();
  }

  @override
  void dispose() {
    _disposeController();
    super.dispose();
  }

  void _disposeController() {
    _confirmController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
        builder: (context, state) {
      var cubit = BlocProvider.of<ResetPasswordCubit>(context);
      return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
                autofillHints: const <String>[AutofillHints.password],
                validate: (String? value) =>
                    Helper.validatePasswordField(value),
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
                controller: _passwordController),
            SizedBox(
              height: 32.h,
            ),
            CustomTextField(
                autofillHints: const <String>[AutofillHints.password],
                validate: (String? value) =>
                    Helper.validateConfirmPasswordField(
                      value: value,
                      password: _passwordController.text,
                      confirmPassword: _confirmController.text,
                    ),
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
                hintText: S.of(context).textConfirmPassword,
                prefix: Icon(
                  Icons.lock_outline,
                  size: 18.sp,
                  color: AppColors.colorTextField,
                ),
                controller: _confirmController),
            SizedBox(
              height: 32.h,
            ),
            CustomGeneralButton(
                width: 225.w,
                text: S.of(context).resetTextButton,
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (context) => const LoginDialog(),
                  );
                })
          ],
        ),
      );
    });
  }
}
