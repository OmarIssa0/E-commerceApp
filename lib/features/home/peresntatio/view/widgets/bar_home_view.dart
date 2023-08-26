import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/color_app.dart';
import 'package:smart_shope/core/title_text.dart';

class BarHomeView extends StatelessWidget {
  const BarHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      width: 375.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 144.r),
            child: TitleTextAppCustom(
              label: 'Mega Mall',
              color: const Color(0xff3669C9),
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.r),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyLight.buy,
                color: ColorApp.kColorNavyBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
