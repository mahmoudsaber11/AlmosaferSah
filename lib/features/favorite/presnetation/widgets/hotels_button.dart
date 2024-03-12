import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelsButton extends StatelessWidget {
  const HotelsButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColors.primaryColor),
            padding: const EdgeInsets.all(14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.r), // Make the button rectangular with rounded corners
            ),
          ),
          onPressed: onPressed,
          child: Text(
            S.of(context).hotels,
            style: const TextStyle(color: AppColors.primaryColor),
          )),
    );
  }
}
