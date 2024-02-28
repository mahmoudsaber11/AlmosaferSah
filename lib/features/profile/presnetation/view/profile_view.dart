import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_app_bar.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:almosafer_sah/core/utils/app_assets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          MySizedBox.height50,
          CustomGeneralAppBar(text: S.of(context).profile),
          MySizedBox.height40,
          Image.asset(AppAssets.imageProfile)
        ],
      ),
    );
  }
}
