import 'package:flutter/material.dart';
import 'package:ngdemo7/themes/app_color.dart';

class AppTheme {
  static ThemeData themeData(bool isDark) {
    return ThemeData(
        scaffoldBackgroundColor:
            isDark ? AppColor.colorDarkBlue : AppColor.colorLightBlue,
        appBarTheme: isDark
            ? AppBarTheme(
                color: AppColor.colorBlack,
                titleTextStyle:
                    TextStyle(color: AppColor.colorWhite, fontSize: 20),
                iconTheme: IconThemeData(color: AppColor.colorWhite))
            : AppBarTheme(
                color: AppColor.colorGrey,
                titleTextStyle:
                    TextStyle(color: AppColor.colorDarkBlue, fontSize: 20),
                iconTheme: IconThemeData(color: AppColor.colorDarkBlue)),
        tabBarTheme: isDark
            ? TabBarTheme(
                labelColor: AppColor.colorLightBlue,
                unselectedLabelColor: AppColor.colorGrey)
            : TabBarTheme(
                labelColor: AppColor.colorDarkBlue,
                unselectedLabelColor: AppColor.colorGrey),
        colorScheme:
            isDark ? AppColor.darkColorScheme : AppColor.lightColorTheme);
  }
}
