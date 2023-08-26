import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/image_asset.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/bar_home_view.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/categories_list.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/featured_product.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/search_bar_home_view.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BarHomeView(),
          SizedBox(height: 30.h),
          const SearchBarHomeView(),
          SizedBox(height: 30.h),
          Image.asset(
            AppImageAssets.homeViewOne,
            // height: 177.h,
            // width: 330.w,
            fit: BoxFit.fill,
            height: 150.h,
            width: 325.w,
          ),
          SizedBox(height: 30.h),
          const CategoriesList(),
          SizedBox(height: 50.h),
          const FeaturedProduct(
            title: 'Featured Product',
          ),
          SizedBox(height: 40.h),
          Image.asset(
            AppImageAssets.homeViewTow,
            fit: BoxFit.fitWidth,
            height: 150.h,
            width: 325.w,
          ),
          SizedBox(height: 20.h),
          const FeaturedProduct(
            title: "Best Sellers",
          ),
          SizedBox(height: 40.h),
          Image.asset(
            AppImageAssets.homeViewThree,
            fit: BoxFit.fitWidth,
            height: 150.h,
            width: 325.w,
          ),
          SizedBox(height: 20.h),
          const FeaturedProduct(
            title: "New Arrivals",
          ),
          SizedBox(height: 34.h),
          const FeaturedProduct(
            title: "Top Rated Product",
          ),
          SizedBox(height: 34.h),
          const FeaturedProduct(
            title: "Special Offers",
          ),
        ],
      ),
    );
  }
}
