import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 220.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.check_circle,
            color: const Color(0xff0EAA00),
            size: 50.w,
          ),
          SizedBox(height: 24.h),
          Text("Password has been changed successfully",
              textAlign: TextAlign.center,
              style: AppStyles.textStyle20Medium.copyWith(fontSize: 16.sp)),
          SizedBox(
            height: 24.h,
          ),
          CustomGeneralButton(
            width: 163.w,
            text: "LOG IN",
            onPressed: () {
              //  context.navigateTo(routeName: Routes.loginViewRoute);
            },
          ),
        ],
      ),
    );
  }
}

// void _handleLoginStates(LoginState state, BuildContext context) {
//   if (state is LoginSuccess) {
//     serviceLocator
//         .get<CacheHelper>()
//         .saveData(key: 'uid', value: Helper.uId)
//         .then((value) {
//       if (value) {
//         context.navigateAndReplacement(
//             newRoute: Routes.storeifyLayoutViewRoute);
//       }
//     });
//   }

//   if (state is LoginError) {
//     showToast(text: state.error, state: ToastStates.error);
//   }
//}
