import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/utils/title_text.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/box_image_home.dart';

import '../../../../../core/utils/color_app.dart';
import '../../viewModel/featured/featured.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.r),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTextAppCustom(
                label: title,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: ColorApp.kColorTextAuthGrey),
                onPressed: () {},
                child: TitleTextAppCustom(
                  label: 'See All',
                  color: Colors.blue,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            height: 250.h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: FeaturedListName.featured.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 15.r),
                  child: BoxImageAndOther(
                    image: FeaturedListName.featured[index].image,
                    title: FeaturedListName.featured[index].title,
                    ratting: FeaturedListName.featured[index].ratting,
                    price: FeaturedListName.featured[index].price,
                    reviews: FeaturedListName.featured[index].reviews,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
