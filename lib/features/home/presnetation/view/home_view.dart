import 'package:almosafer_sah/config/routes/routes.dart';
import 'package:almosafer_sah/core/utils/app_navigator.dart';
import 'package:almosafer_sah/core/utils/constants.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
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
      physics: Constants.physics,
      child: Padding(
        padding: EdgeInsets.only(
          left: isArabic() ? 0 : 16.w,
          right: isArabic() ? 16.w : 0,
          top: 50.h,
        ),
        child: Column(
          children: [
            const AppBarSection(),
            MySizedBox.height40,
            const CustomCardHotels(),
            MySizedBox.height32,
            CustomTextType(
              type: S.of(context).topDestinations,
              onTap: () {
                context.navigateTo(routeName: Routes.destinationsViewRoute);
              },
            ),
            MySizedBox.height16,
            const CustomCityItemListView(),
            MySizedBox.height32,
            CustomTextType(
              type: S.of(context).offers,
              onTap: () =>
                  context.navigateTo(routeName: Routes.offersViewRoute),
            ),
            MySizedBox.height27,
            const CustomCardGroupItemListView(),
            MySizedBox.height32,
            CustomTextType(type: S.of(context).topTrips),
            MySizedBox.height16,
            const CustomCardTripsItemListView(),
            MySizedBox.height32,
            CustomTextType(type: S.of(context).popularHotels),
            MySizedBox.height16,
            const CustomHotelItemListView(),
            MySizedBox.height32,
            CustomTextType(type: S.of(context).popularHotels),
            MySizedBox.height16,
            const TourismServicesItemListView(),
            MySizedBox.height32,
            CustomTextType(type: S.of(context).travelProducts),
            MySizedBox.height16,
            const TravelProductsItemListView(),
            MySizedBox.height32,
            CustomTextType(type: S.of(context).packages),
            MySizedBox.height16,
            const PackageItemListView(),
          ],
        ),
      ),
    );
  }
}
