import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_shope/core/utils/animation_nav.dart';
import 'package:smart_shope/core/utils/color_app.dart';
import 'package:smart_shope/core/utils/title_text.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 290.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Lottie.asset(
                "assets/image/animation_llznp944.json",
                // width: 225,
                height: 220.h,
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 0, 0, 0),
              color: Colors.grey.shade900,
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
                        height: 60.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          // GoRouter.of(context).push(AppRouter.kLoginView);
                          // GoRouter.of(context).push(createRoute() as String);
                          Navigator.of(context)
                              .push(AnimationNav.createRouteSigIn());
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorApp.kColorButton,
                            // color: ColorApp.kColorTextAuathGrey,
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
                        height: 45.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TitleTextAppCustom(
                          label: "New Create Account",
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(AnimationNav.createRouteSignUp());
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            // color: ColorApp.kColorHalfGrey,
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                          ),
                          child: Center(
                            child: TitleTextAppCustom(
                              label: 'Sign Up',
                              fontSize: 14.sp,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
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
