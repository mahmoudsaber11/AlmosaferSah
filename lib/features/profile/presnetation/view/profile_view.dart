import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_app_bar.dart';
import 'package:almosafer_sah/features/profile/presnetation/widgets/applications_settings.dart';
import 'package:almosafer_sah/features/profile/presnetation/widgets/profile_details.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySizedBox.height50,
        CustomGeneralAppBar(text: S.of(context).profile),
        MySizedBox.height40,
        const ProfileDetails(),
        MySizedBox.height40,
        Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Text(
            "Application settings",
            style: AppStyles.textStyle16Medium,
          ),
        ),
        const ApplicationSettings(),
      ],
    );
  }
}
