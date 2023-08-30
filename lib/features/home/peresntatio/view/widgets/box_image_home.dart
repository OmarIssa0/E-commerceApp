import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/title_text.dart';

class BoxImageAndOther extends StatelessWidget {
  const BoxImageAndOther({
    super.key,
    required this.image,
    required this.title,
    required this.ratting,
    required this.price,
    required this.reviews,
  });

  final String image, title, ratting, price;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.r, vertical: 7.5.r),
      child: Material(
        shadowColor: Colors.white70,
        type: MaterialType.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        // borderRadius: BorderRadius.circular(10.r),
        elevation: 2,
        color: Colors.white,
        child: SizedBox(
          height: 242.h,
          width: 156.w,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.r, vertical: 15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 123.h,
                  width: 123.w,
                  child: Image.asset(image),
                  // FancyShimmerImage(
                  //   imageUrl: image,

                  // ),
                ),
                SizedBox(height: 19.h),
                TitleTextAppCustom(
                  label: title,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                TitleTextAppCustom(
                  label: price,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffFE3A30),
                ),
                SizedBox(
                  height: 10.5.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: const Color(0xffffc120),
                      size: 11.spMax,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    TitleTextAppCustom(
                      label: ratting.toString(),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    TitleTextAppCustom(
                      label: '${reviews.toString()} Reviews',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
