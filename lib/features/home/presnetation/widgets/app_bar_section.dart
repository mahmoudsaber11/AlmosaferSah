import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarSection extends StatefulWidget {
  const AppBarSection({
    super.key,
  });

  @override
  State<AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<AppBarSection> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          height: 45.h,
          child: CustomSearchTextField(controller: _searchController),
        )),
        MySizedBox.width16,
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: AppColors.greyColor,
            )),
      ],
    );
  }
}
