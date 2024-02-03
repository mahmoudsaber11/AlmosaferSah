import 'package:almosafer_sah/core/helpers/helper.dart';
import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_button.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({super.key});

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autovalidateMode;

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  void _initFormAttributes() {
    _formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
  }

  @override
  void initState() {
    _initFormAttributes();
    super.initState();
  }

  @override
  void dispose() {
    _disposeController();
    _disposeFocusNodes();
    super.dispose();
  }

  void _disposeFocusNodes() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  void _disposeController() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 18.w, top: 24.h),
        child: Column(
          children: [
            CustomTextField(
                validate: (String? value) => Helper.validateEmailField(value),
                keyboardType: TextInputType.emailAddress,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_passwordFocusNode),
                autofillHints: const [AutofillHints.email],
                focusNode: _emailFocusNode,
                hintText: "example@gmail.com",
                prefix: Icon(
                  Icons.email_outlined,
                  size: 18.sp,
                  color: AppColors.colorTextField,
                ),
                controller: _emailController),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
                autofillHints: const <String>[AutofillHints.password],
                validate: (String? value) =>
                    Helper.validatePasswordField(value),
                focusNode: _passwordFocusNode,
                //   isPassword: cubit.isPassword,
                //    onSubmit: (_) => _login(context),
                suffix: IconButton(
                    onPressed: () {
                      //  cubit.changePasswordVisibility();
                    },
                    icon: const Icon(
                      // cubit.isPassword ? Icons.visibility :
                      Icons.visibility_off,
                      color: AppColors.colorTextField,
                    )),
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Password',
                prefix: Icon(
                  Icons.lock_outline,
                  size: 18.sp,
                  color: AppColors.colorTextField,
                ),
                controller: _passwordController),
            SizedBox(
              height: 16.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                // onTap: () => context.navigateTo(
                //     routeName: Routes.forgetPasswordViewRoute),
                child: Text(
                  "Forget Password?",
                  style: AppStyles.textStyle10Regular
                      .copyWith(color: AppColors.textColor),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomGeneralButton(
              width: 170.w,
              text: "LOG IN",
            )
          ],
        ),
      ),
    );
  }
}
