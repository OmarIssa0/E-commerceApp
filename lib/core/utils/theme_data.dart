import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/utils/color_app.dart';

class Styles {
  static ThemeData themeData({
    required BuildContext context,
  }) {
    return ThemeData(
      fontFamily: 'DMSans',
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xffffffff),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: ColorApp.kColorOfGrey),
        ),
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: ColorApp.kColorHalfGrey,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: ColorApp.kColorOfGrey),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          // borderSide: const BorderSide(color: ColorApp.kColorOfGrey),
        ),
      ),
    );
  }
}
