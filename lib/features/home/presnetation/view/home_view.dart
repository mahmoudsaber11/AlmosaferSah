import 'package:almosafer_sah/features/home/presnetation/widgets/app_bar_section.dart';
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
      child: const Column(
        children: [
          AppBarSection(),
        ],
      ),
    );
  }
}
