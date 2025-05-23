import 'package:advancedflutter/core/theme/colors.dart';
import 'package:advancedflutter/core/widght/circalarSignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Top_AppBar extends StatelessWidget {
  const Top_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Omar!",
                style: TextStyle(
                    color: ColorsApp.main_Color_Black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp),
              ),
              Text(
                "How Are you Today?",
                style: TextStyle(
                    color: ColorsApp.second_Text_Color_Black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp),
              )
            ],
          ),
          Spacer(),
          CircularWidght(assetName: 'assets/images/Button.png')
        ],
      ),
    );
  }
}
