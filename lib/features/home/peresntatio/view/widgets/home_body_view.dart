import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/image_asset.dart';
import 'package:smart_shope/core/title_text.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/bar_home_view.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/search_bar_home_view.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BarHomeView(),
        SizedBox(height: 30.h),
        const SearchBarHomeView(),
        SizedBox(height: 30.h),
        Image.asset(
          AppImageAssets.homeViewOne,
          height: 177.h,
          width: 330.w,
        ),
        SizedBox(height: 30.h),
        const CategoriesList(),
      ],
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

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
                label: 'Categories',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              TextButton(
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
            height: 16.h,
          ),
          
        ],
      ),
    );
  }
}
