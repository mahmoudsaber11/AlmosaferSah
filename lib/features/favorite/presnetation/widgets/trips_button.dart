import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsButton extends StatelessWidget {
  const TripsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8.r)),
          child: MaterialButton(
              child: const Text(
                "Trips",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {})),
    );
  }
}
