import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/image_asset.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/bar_home_view.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/categories_list.dart';
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
