import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_app_bar.dart';
import 'package:almosafer_sah/features/profile/presnetation/widgets/profile_details.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySizedBox.height50,
        CustomGeneralAppBar(text: S.of(context).profile),
        MySizedBox.height40,
        const ProfileDetails(),
      ],
    );
  }
}
