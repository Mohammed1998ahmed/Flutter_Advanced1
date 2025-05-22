import 'package:advancedflutter/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrSignIn extends StatelessWidget {
  const OrSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 118.w,
          height: 1.h,
          color: ColorsApp.color_Line_on_SignIn_Or,
        ),
        Container(
          child: Text(
            " Or sign in with",
            style: TextStyle(
                color: ColorsApp.second_Text_Color_Black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          width: 117.w,
          height: 1.h,
          color: ColorsApp.color_Line_on_SignIn_Or,
        ),
      ],
    );
  }
}
