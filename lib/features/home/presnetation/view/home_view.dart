import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_item.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/app_bar_section.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_card_group_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_card_hotels.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_card_trips_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_city_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_hotel_item_lsit_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_text_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          top: 50.h,
        ),
        child: Column(
          children: [
            const AppBarSection(),
            SizedBox(
              height: 40.h,
            ),
            const CustomCardHotels(),
            SizedBox(
              height: 32.h,
            ),
            const CustomTextType(type: "Top Destinations"),
            SizedBox(
              height: 15.h,
            ),
            const CustomCityItemListView(),
            SizedBox(
              height: 33.h,
            ),
            const CustomTextType(type: "Offers"),
            SizedBox(
              height: 27.h,
            ),
            const CustomCardGroupItemListView(),
            SizedBox(
              height: 32.h,
            ),
            const CustomTextType(type: "Top Trips"),
            SizedBox(
              height: 16.h,
            ),
            const CustomCardTripsItemListView(),
            SizedBox(
              height: 32.h,
            ),
            const CustomTextType(type: "Popular Hotels"),
            SizedBox(
              height: 16.h,
            ),
            const CustomHotelItemListView(),
            SizedBox(
              height: 32.h,
            ),
            const CustomTextType(type: " Tourism Services"),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 220.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const CustomGeneralItem(
                      image: AppAssets.imageService,
                      text: " Tourism Services",
                      price: "10,020 \$"),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 26.w,
                      ),
                  itemCount: 7),
            )
          ],
        ),
      ),
    );
  }
}
