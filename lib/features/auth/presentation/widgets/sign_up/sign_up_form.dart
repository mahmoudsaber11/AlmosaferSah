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

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameContorller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autovalidateMode;

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();
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
    _confirmPasswordFocusNode.dispose();
    _nameFocusNode.dispose();
    _phoneFocusNode.dispose();
  }

  void _disposeController() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    _userNameContorller.dispose();
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<SignUpCubit>(context);
        return Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 18.w, top: 40.h),
            child: Column(
              children: [
                CustomTextField(
                    validate: (String? value) =>
                        Helper.validateEmailField(value),
                    keyboardType: TextInputType.name,
                    onEditingComplete: () =>
                        FocusScope.of(context).requestFocus(_emailFocusNode),
                    autofillHints: const [AutofillHints.name],
                    focusNode: _nameFocusNode,
                    hintText: S.of(context).textName,
                    prefix: Icon(
                      Icons.person_outline,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: _phoneController),
                MySizedBox.height32,
                CustomTextField(
                    validate: (String? value) =>
                        Helper.validateEmailField(value),
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () =>
                        FocusScope.of(context).requestFocus(_phoneFocusNode),
                    autofillHints: const [AutofillHints.email],
                    focusNode: _emailFocusNode,
                    hintText: S.of(context).textEmail,
                    prefix: Icon(
                      Icons.email_outlined,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: _emailController),
                MySizedBox.height32,
                CustomTextField(
                    validate: (String? value) =>
                        Helper.validateEmailField(value),
                    keyboardType: TextInputType.phone,
                    onEditingComplete: () =>
                        FocusScope.of(context).requestFocus(_passwordFocusNode),
                    autofillHints: const [AutofillHints.email],
                    focusNode: _phoneFocusNode,
                    hintText: S.of(context).textPhone,
                    prefix: Icon(
                      Icons.mobile_friendly,
                      size: 18.sp,
                      color: AppColors.colorTextField,
                    ),
                    controller: _phoneController),
                MySizedBox.height32,
                CustomTextField(
                    autofillHints: const <String>[AutofillHints.password],
                    validate: (String? value) =>
                        Helper.validatePasswordField(value),
                    focusNode: _passwordFocusNode,
                    isPassword: cubit.isPassword,
                    onEditingComplete: () => FocusScope.of(context)
                        .requestFocus(_confirmPasswordFocusNode),
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
                    controller: _passwordController),
                MySizedBox.height32,
                CustomTextField(
                    autofillHints: const <String>[AutofillHints.password],
                    validate: (String? value) =>
                        Helper.validateConfirmPasswordField(
                          value: value,
                          password: _passwordController.text,
                          confirmPassword: _confirmController.text,
                        ),
                    focusNode: _confirmPasswordFocusNode,
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
                    controller: _confirmController),
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
