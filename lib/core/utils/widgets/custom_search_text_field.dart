import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.controller,
    this.validate,
    this.onChange,
    this.isPassword,
    this.onSubmit,
    this.autofillHints,
    this.focusNode,
    this.onEditingComplete,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextEditingController controller;
  final String? Function(String?)? validate;
  final ValueSetter? onChange;
  final bool? isPassword;
  final Function(String submittedText)? onSubmit;
  final List<String>? autofillHints;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final TextCapitalization textCapitalization;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextFormField(
        obscureText: isPassword ?? false,
        autofillHints: autofillHints,
        validator: validate,
        onChanged: onChange,
        onFieldSubmitted: onSubmit,
        onEditingComplete: onEditingComplete,
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.text,
        cursorColor: Colors.black,
        textCapitalization: textCapitalization,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              // Add your onPressed logic here
            },
            icon: SvgPicture.asset(
              AppAssets.iconSearch,
              // specify other parameters...
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              // Add your onPressed logic here
            },
            icon: SvgPicture.asset(
              AppAssets.iconFilter,
              // specify other parameters...
            ),
          ),
          focusedBorder: _buildTextFieldOutlinedBorder(),
          focusedErrorBorder: _buildTextFieldOutlinedBorder(),
          errorBorder: _buildTextFieldOutlinedBorder(),
          disabledBorder: _buildTextFieldOutlinedBorder(),
          hintText: S.of(context).search,

          // labelStyle: AppTextStyles.textStyle16Medium,
          filled: true,
          fillColor: Colors.transparent,
          border: _buildTextFieldOutlinedBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _buildTextFieldOutlinedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide.none,
    );
  }
}
