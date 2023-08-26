import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_app.dart';

class SearchBarHomeView extends StatelessWidget {
  const SearchBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.r),
      child: Container(
        width: 350.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: ColorApp.kColorOfGrey,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextField(
          cursorColor: ColorApp.kColorDarkGrey,
          decoration: InputDecoration(
            suffixIcon:
                const Icon(IconlyLight.search, color: ColorApp.kColorNavyBlack),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: ColorApp.kColorOfGrey),
            ),
            // label: TitleTextAppCustom(
            //   label: 'Search Product Name',
            //   fontSize: 14.sp,
            //   fontWeight: FontWeight.w500,
            //   color: ColorApp.kColorHalfGrey,
            // ),
            hintText: 'Search Product Name',
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
        ),
      ),
    );
  }
}
