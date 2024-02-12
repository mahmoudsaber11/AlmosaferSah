import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/helpers/helper.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_button.dart';
import 'package:almosafer_sah/core/widgets/custom_text_field.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<ForgetPasswordForm> {
  final TextEditingController _emailController = TextEditingController();
  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autovalidateMode;

  final FocusNode _emailFocusNode = FocusNode();
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
  }

  void _disposeController() {
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
              validate: (String? value) => Helper.validateEmailField(value),
              keyboardType: TextInputType.emailAddress,
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
          CustomGeneralButton(
            onPressed: () =>
                context.navigateTo(routeName: Routes.verificationViewRoute),
            width: 200.w,
            text: S.of(context).verifyEmail,
          ),
        ],
      ),
    );
  }
}
