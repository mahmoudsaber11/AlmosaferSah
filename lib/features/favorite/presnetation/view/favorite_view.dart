import 'package:almosafer_sah/core/utils/widgets/custom_general_appBar.dart';
import 'package:almosafer_sah/features/favorite/presnetation/widgets/hotels_button.dart';
import 'package:almosafer_sah/features/favorite/presnetation/widgets/trips_button.dart';
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
              const TripsButton(),
              SizedBox(
                width: 16.w,
              ),
              const HotelsButton()
            ],
          )
        ],
      ),
    );
  }
}
