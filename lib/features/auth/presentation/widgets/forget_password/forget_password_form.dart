import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/helpers/helper.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_button.dart';
import 'package:almosafer_sah/core/widgets/custom_text_field.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/forget_password/forget_password_cubit.dart';
import 'package:almosafer_sah/features/auth/presentation/cubit/forget_password/forget_password_state.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgetPasswordCubit cubit =
        BlocProvider.of<ForgetPasswordCubit>(context);
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              CustomTextField(
                  validate: (String? value) => Helper.validateEmailField(value),
                  keyboardType: TextInputType.emailAddress,
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
              CustomGeneralButton(
                onPressed: () {
                  context.navigateTo(routeName: Routes.verificationViewRoute);
                },
                width: 200.w,
                text: S.of(context).verifyEmail,
              ),
            ],
          ),
        );
      },
    );
  }
}
