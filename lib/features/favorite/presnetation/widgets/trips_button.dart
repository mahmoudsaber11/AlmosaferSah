import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsButton extends StatelessWidget {
  const TripsButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8.r)),
          child: MaterialButton(
              onPressed: onPressed,
              child: Text(
                S.of(context).trips,
                style: const TextStyle(color: Colors.white),
              ))),
    );
  }
}
