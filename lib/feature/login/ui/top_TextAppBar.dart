import 'package:advancedflutter/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Top_Text_App_Bar extends StatelessWidget {
  const Top_Text_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            "Welcome Back",
            style: TextStyle(
                color: ColorsApp.main_Color_Blue,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp),
          ),
        ),
        Container(
          width: 312.w,
          child: Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
            style: TextStyle(
                color: ColorsApp.second_Text_Color_Black,
                fontWeight: FontWeight.w400,
                fontSize: 15.sp),
          ),
        )
      ],
    );
  }
}
