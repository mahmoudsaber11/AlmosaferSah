import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

class Constants {
  static const ScrollPhysics physics = BouncingScrollPhysics();
  static EdgeInsetsGeometry get authHorizontalPadding =>
      EdgeInsets.symmetric(horizontal: 38.w);
}
