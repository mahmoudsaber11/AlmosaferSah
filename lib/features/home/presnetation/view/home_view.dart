import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/app_bar_section.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_city_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_row_hotels_and_flights.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_text_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        top: 12.h,
      ),
      child: Column(
        children: [
          const AppBarSection(),
          SizedBox(
            height: 40.h,
          ),
          const CustomRowHotelsAndFlights(),
          SizedBox(
            height: 32.h,
          ),
          const CustomTextType(type: "Top Destinations"),
          SizedBox(
            height: 15.h,
          ),
          const CustomCityListView()
        ],
      ),
    );
  }
}
