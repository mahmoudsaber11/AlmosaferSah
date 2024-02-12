import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.keyboardType,
    required this.controller,
    this.hintText,
    this.validate,
    this.onChange,
    this.isPassword,
    this.suffix,
    this.prefix,
    this.onSubmit,
    this.autofillHints,
    this.focusNode,
    this.onEditingComplete,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextInputType keyboardType;
  final String? hintText;
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final ValueSetter? onChange;
  final bool? isPassword;
  final Widget? suffix;
  final Widget? prefix;
  final Function(String submittedText)? onSubmit;
  final List<String>? autofillHints;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final TextCapitalization textCapitalization;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ?? false,
      autofillHints: autofillHints,
      validator: validate,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      onEditingComplete: onEditingComplete,
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      textCapitalization: textCapitalization,
      autofocus: true,
      decoration: InputDecoration(
        suffixIcon: suffix,
        prefixIcon: prefix,
        hintStyle: const TextStyle(color: AppColors.colorTextField),
        contentPadding: const EdgeInsets.only(bottom: 8.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.r),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 2.0,
          ),
        ),
        hintText: hintText!,
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: const BorderSide(
            color: AppColors.greyColor,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
