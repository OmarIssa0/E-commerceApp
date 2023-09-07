import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_shope/core/utils/title_text.dart';
import 'package:smart_shope/features/details/peresntation/view/widgets/info_shope.dart';

import '../../../../../core/utils/color_app.dart';

class DetailsBodyView extends StatelessWidget {
  const DetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(IconlyLight.arrowLeft2),
            ),
            SizedBox(
              height: 72.h,
            ),
            // Image.asset(
            //   'assets/image/image-5.png',
            //   height: 300.h,
            //   width: 325.w,
            //   fit: BoxFit.fill,
            // ),
            SvgPicture.asset(
              "assets/image/Frame 17.svg",
              height: 300.h,
              width: 305.w,
            ),
            SizedBox(
              height: 30.h,
            ),
            TitleTextAppCustom(
              label: 'TMA-2HD Wireless',
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 10.h,
            ),
            TitleTextAppCustom(
              label: '150 JD',
              fontSize: 16.sp,
              color: const Color(0xfffe3a30),
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: const Color(0xffffc120),
                  size: 14.spMax,
                ),
                SizedBox(
                  width: 3.w,
                ),
                TitleTextAppCustom(
                  label: '4.6',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  width: 10.w,
                ),
                TitleTextAppCustom(
                  label: '86 Reviews',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            const InfoShope(),
            SizedBox(
              height: 30.h,
            ),
            TitleTextAppCustom(
              label: 'Description Product',
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
            // TitleTextAppCustom(
            //   label:
            //       'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. ',
            //   fontSize: 14.sp,
            //   fontWeight: FontWeight.w400,
            // ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. \n\n The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff0c1a30),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              color: ColorApp.kColorDarkGrey,
              width: double.infinity,
              height: 1,
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleTextAppCustom(
                  label: 'Review (86)',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: const Color(0xffffc120),
                      size: 16.spMax,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    TitleTextAppCustom(
                      label: '4.6',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
