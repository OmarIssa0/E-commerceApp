import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_app.dart';
import '../../../../../core/utils/title_text.dart';

class ButtonNavBarDetailsView extends StatelessWidget {
  const ButtonNavBarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.r, right: 25.r, bottom: 10.r),
      child: Row(
        children: [
          GestureDetector(
            child: Container(
              width: 153.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.red,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleTextAppCustom(
                      label: 'Added',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    const Icon(
                      IconlyBold.heart,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 19.w,
          ),
          GestureDetector(
            child: Container(
              width: 153.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: ColorApp.kColorButton,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TitleTextAppCustom(
                      label: 'Add to Cart',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    // const Icon(
                    //   IconlyLight.heart,
                    //   color: Colors.white,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
