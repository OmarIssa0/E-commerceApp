import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/title_text.dart';

class CategoryRoundedWidget extends StatelessWidget {
  const CategoryRoundedWidget({
    super.key,
    required this.image,
    required this.name,
  });

  final String image, name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 80.h,
        width: 80.w,
        child: Column(
          children: [
            Image.asset(
              image,
              height: 48.h,
              width: 48.w,
            ),
            SizedBox(
              height: 8.h,
            ),
            TitleTextAppCustom(
              label: name,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }
}
