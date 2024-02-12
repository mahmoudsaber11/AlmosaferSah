import 'package:almosafer_sah/config/routes/app_router.dart';
import 'package:almosafer_sah/config/themes/app_themes.dart';
import 'package:almosafer_sah/core/utils/app_string.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlmosaferApp extends StatelessWidget {
  const AlmosaferApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: AppThemes.lightTheme,
        title: AppString.appTitle,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
