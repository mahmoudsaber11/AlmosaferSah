import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/utils/functions/app_navigator.dart';
import 'package:almosafer_sah/core/utils/functions/constants.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/app_bar_section.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_card_group_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_card_hotels.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_card_trips_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_city_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_hotel_item_lsit_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_text_type.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/package_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/tourism_services_item_list_view.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/travel_products_item_list_view.dart';
import 'package:almosafer_sah/generated/l10n.dart';
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
          left: isArabic() ? 0 : 16.w,
          right: isArabic() ? 16.w : 0,
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
            CustomTextType(
              type: S.of(context).topDestinations,
              onTap: () {
                context.navigateTo(routeName: Routes.destinationsViewRoute);
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            const CustomCityItemListView(),
            SizedBox(
              height: 33.h,
            ),
            CustomTextType(type: S.of(context).offers),
            SizedBox(
              height: 27.h,
            ),
            const CustomCardGroupItemListView(),
            SizedBox(
              height: 32.h,
            ),
            CustomTextType(type: S.of(context).topTrips),
            SizedBox(
              height: 16.h,
            ),
            const CustomCardTripsItemListView(),
            SizedBox(
              height: 32.h,
            ),
            CustomTextType(type: S.of(context).popularHotels),
            SizedBox(
              height: 16.h,
            ),
            const CustomHotelItemListView(),
            SizedBox(
              height: 32.h,
            ),
            CustomTextType(type: S.of(context).popularHotels),
            SizedBox(
              height: 16.h,
            ),
            const TourismServicesItemListView(),
            SizedBox(
              height: 32.h,
            ),
            CustomTextType(type: S.of(context).travelProducts),
            SizedBox(
              height: 16.h,
            ),
            const TravelProductsItemListView(),
            SizedBox(
              height: 32.h,
            ),
            CustomTextType(type: S.of(context).packages),
            SizedBox(
              height: 16.h,
            ),
            const PackageItemListView(),
          ],
        ),
      ),
    );
  }
}
