import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/utils/animation_nav.dart';
import 'package:smart_shope/core/utils/color_app.dart';
import 'package:smart_shope/core/utils/title_text.dart';

class RegisterBodyView extends StatefulWidget {
  const RegisterBodyView({super.key});

  @override
  State<RegisterBodyView> createState() => _RegisterBodyViewState();
}

class _RegisterBodyViewState extends State<RegisterBodyView> {
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(IconlyLight.arrowLeft2),
            ),
            SizedBox(
              height: 72.h,
            ),
            TitleTextAppCustom(
              label: 'Register Account ',
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              maxLine: 2,
            ),
            SizedBox(
              height: 20.h,
            ),
            TitleTextAppCustom(
              label: 'Masukan Email/ No. Hp untuk mendeftar',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorApp.kColorTextAuthGrey,
            ),
            SizedBox(
              height: 50.h,
            ),
            // TitleTextAppCustom(
            //   label: 'Email/Phone',
            //   fontSize: 14.sp,
            // ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: ColorApp.kColorOfGrey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Full Name',
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: ColorApp.kColorOfGrey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Email Address',
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: ColorApp.kColorOfGrey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                obscureText: isShow,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isShow = !isShow;
                      });
                    },
                    icon: isShow
                        ? const Icon(IconlyLight.show)
                        : const Icon(IconlyLight.hide),
                  ),
                  hintText: 'Enter Password',
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: ColorApp.kColorOfGrey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                obscureText: isShow,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isShow = !isShow;
                      });
                    },
                    icon: isShow
                        ? const Icon(IconlyLight.show)
                        : const Icon(IconlyLight.hide),
                  ),
                  hintText: 'Enter Password',
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     TextButton(
            //       onPressed: () {},
            //       style: TextButton.styleFrom(
            //           foregroundColor: ColorApp.kColorTextAuthGrey),
            //       child: TitleTextAppCustom(
            //         label: 'Forgot Password',
            //         fontSize: 14.sp,
            //       ),
            //     ),
            //     TextButton(
            //       onPressed: () {},
            //       style: TextButton.styleFrom(
            //           foregroundColor: ColorApp.kColorTextAuthGrey),
            //       child: TitleTextAppCustom(
            //         label: 'Sign Up',
            //         fontSize: 14.sp,
            //         color: ColorApp.kColorButton,
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 35.h,
            // ),
            GestureDetector(
              onTap: () {},
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
                    label: 'Sign Up',
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleTextAppCustom(label: 'Have an Account?', fontSize: 14.sp),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(AnimationNav.createRouteSigIn());
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: ColorApp.kColorTextAuthGrey),
                  child: TitleTextAppCustom(
                    label: 'Sign In',
                    fontSize: 14.sp,
                    color: ColorApp.kColorButton,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
