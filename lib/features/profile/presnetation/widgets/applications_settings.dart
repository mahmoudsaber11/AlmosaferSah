import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/widgets/custom_general_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationSettings extends StatefulWidget {
  const ApplicationSettings({
    super.key,
  });

  @override
  State<ApplicationSettings> createState() => _ApplicationSettingsState();
}

class _ApplicationSettingsState extends State<ApplicationSettings> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(14.r)),
      child: Column(
        children: [
          const GeneralThemes(
            text: "Langauge",
          ),
          const Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Dark Mode",
                  style:
                      AppStyles.textStyle16Medium.copyWith(color: Colors.white),
                ),
                const Spacer(),
                Transform.scale(
                  scale: .9,
                  child: Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },

                    activeColor:
                        Colors.blue, // Optional, you can customize active color
                    activeTrackColor: Colors
                        .white, // Optional, you can customize active track color
                    inactiveThumbColor: Colors
                        .grey, // Optional, you can customize inactive thumb color
                    inactiveTrackColor: Colors
                        .white, // Optional, you can customize inactive track color
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          const GeneralThemes(
            text: "Change Currency",
          ),
          const Divider(
            color: Colors.white,
          ),
          const GeneralThemes(
            text: "Terms and Conditions",
          ),
          const Divider(
            color: Colors.white,
          ),
          const GeneralThemes(
            text: "Contact Us",
          ),
        ],
      ),
    );
  }
}
