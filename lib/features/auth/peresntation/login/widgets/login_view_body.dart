import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_shope/core/utils/animation_nav.dart';
import 'package:smart_shope/core/utils/color_app.dart';
import 'package:smart_shope/core/utils/title_text.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
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
              label: 'Welcome back to \nMage Mall',
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              maxLine: 2,
            ),
            SizedBox(
              height: 20.h,
            ),
            TitleTextAppCustom(
              label: 'Silahkan masukan data untuk login',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorApp.kColorTextAuthGrey,
            ),
            SizedBox(
              height: 50.h,
            ),
            TitleTextAppCustom(
              label: 'Email/Phone',
              fontSize: 14.sp,
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
              height: 30.h,
            ),
            TitleTextAppCustom(
              label: 'Password',
              fontSize: 14.sp,
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
              height: 70.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(AnimationNav.createRouteHomeView());
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
              height: 125.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: ColorApp.kColorTextAuthGrey),
                  child: TitleTextAppCustom(
                    label: 'Forgot Password',
                    fontSize: 14.sp,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(AnimationNav.createRouteSignUp());
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: ColorApp.kColorTextAuthGrey),
                  child: TitleTextAppCustom(
                    label: 'Sign Up',
                    fontSize: 14.sp,
                    color: ColorApp.kColorButton,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom,
            ),
          ],
        ),
      ),
    );
  }
}
