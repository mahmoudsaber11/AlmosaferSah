import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_appBar.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * .07.h,
          ),
          const CustomGeneralAppBar(text: "Favorite"),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              Expanded(
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
