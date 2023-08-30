import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smart_shope/core/color_app.dart';
import 'package:smart_shope/core/router_app.dart';
import 'package:smart_shope/core/title_text.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              // child: Lottie.asset(
              //   "assets/image/animation_llv8ffkg.json",
              //   // width: 225,
              //   height: 220.h,
              // ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                TitleTextAppCustom(
                  label: 'Welcome to App \nMega Mall',
                  fontSize: 24.sp,
                  maxLine: 2,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 150.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kLoginView);
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorApp.kColorButton,
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                          ),
                          child: Center(
                            child: TitleTextAppCustom(
                              label: 'Sign In',
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorApp.kColorNavyBlack,
                            // color: ColorApp.kColorOfGrey,
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                          ),
                          child: Center(
                            child: TitleTextAppCustom(
                              label: 'Sign Up',
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        endIndent: 20,
                        indent: 35,
                        thickness: 1,
                      ),
                    ),
                    TitleTextAppCustom(
                      label: 'OR',
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                    const Expanded(
                      child: Divider(
                        endIndent: 35,
                        indent: 20,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.r),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      // minRadius: 1,
                      // maxRadius: 30.r,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Ionicons.logo_google,
                          color: Colors.red,
                          // size: 35.dm,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CircleAvatar(
                      // minRadius: 1,
                      // maxRadius: 20.r,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Ionicons.logo_facebook,
                          color: Colors.blue,
                          // size: 35.w,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
