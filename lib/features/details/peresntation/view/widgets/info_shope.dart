import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_shope/core/utils/color_app.dart';
import 'package:smart_shope/core/utils/title_text.dart';

class InfoShope extends StatelessWidget {
  const InfoShope({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorApp.kColorDarkGrey,
          width: double.infinity,
          height: 1,
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          children: [
            Image.asset(
              "assets/image/electronics.png",
              height: 45.h,
              width: 45.w,
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTextAppCustom(
                  label: 'Shope Larson Electronic',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  children: [
                    TitleTextAppCustom(
                      label: 'Official Store',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    SvgPicture.asset(
                      "assets/image/iconly-bold-shield-done.svg",
                      height: 20.h,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(IconlyLight.arrowRight2),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          color: ColorApp.kColorDarkGrey,
          width: double.infinity,
          height: 1,
        ),
      ],
    );
  }
}
