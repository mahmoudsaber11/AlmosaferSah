import 'package:almosafer_sah/core/utils/widgets/custom_card_group_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardGroupItemListView extends StatelessWidget {
  const CustomCardGroupItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomCardGroupItem(),
          separatorBuilder: (context, index) => SizedBox(
                width: 16.w,
              ),
          itemCount: 7),
    );
  }
}
