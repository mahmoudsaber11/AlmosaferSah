import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/widgets/custom_general_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(14.r)),
      child: const Column(
        children: [
          GeneralThemes(
            text: "My bookings",
          ),
          Divider(
            color: Colors.white,
          ),
          GeneralThemes(
            text: "Logout",
          ),
        ],
      ),
    );
  }
}
