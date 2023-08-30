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
        child: const TextField(
          cursorColor: ColorApp.kColorDarkGrey,
          decoration: InputDecoration(
            suffixIcon:
                Icon(IconlyLight.search, color: ColorApp.kColorNavyBlack),
            hintText: 'Search Product Name',
          ),
        ),
      ),
    );
  }
}
