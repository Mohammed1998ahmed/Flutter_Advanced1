import 'package:advancedflutter/core/theme/colors.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextSpanStyle extends StatelessWidget {
  const TextSpanStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            // النمط الأساسي
            children: [
              TextSpan(
                  text: "By logging, you agree to our",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.second_Text_Color_Black,
                      fontSize: 12.sp)),
              TextSpan(
                  text: " Terms & Conditions",
                  style: TextStyle(
                      color: ColorsApp.main_Color_Black, fontSize: 12.sp)),
              TextSpan(
                  text: " and",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.second_Text_Color_Black,
                      fontSize: 12.sp)),
              TextSpan(
                  text: " PrivacyPolicy",
                  style: TextStyle(
                      color: ColorsApp.main_Color_Black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp)),
            ],
          ),
        ),
        SpaceWidght(
          height: 14.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Already have an account yet?",
                  style: TextStyle(
                      color: ColorsApp.main_Color_Black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp)),
            ),
            Container(
              width: 50.w,
              height: 17.h,
              child: GestureDetector(
                onTap: () {
                  print("Sign UP");
                },
                child: Text(" Sign Up ",
                    style: TextStyle(
                        color: ColorsApp.main_Color_Blue,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp)),
              ),
            )
          ],
        )
      ],
    );
  }
}
