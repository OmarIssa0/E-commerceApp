import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/utils/title_text.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/categories_rounded_widget.dart';
import 'package:smart_shope/features/home/peresntatio/viewModel/categories/categories.dart';

import '../../../../../core/utils/color_app.dart';

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
            height: 16.h,
          ),
          SizedBox(
            height: 80.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: CategoriesListName.categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 5.r),
                  child: CategoryRoundedWidget(
                      image: CategoriesListName.categories[index].image,
                      name: CategoriesListName.categories[index].name),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
