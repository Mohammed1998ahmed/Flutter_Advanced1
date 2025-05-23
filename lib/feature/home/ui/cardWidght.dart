import 'package:advancedflutter/core/theme/colors.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidght extends StatelessWidget {
  const CardWidght({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 197.h,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 35.h),
            child: Container(
              width: 343.w,
              height: 167.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorsApp.main_Color_Blue,
                    ColorsApp.Second_Color_Blue,
                    ColorsApp.main_Color_Blue,
                    ColorsApp.Second_Color_Blue,
                    ColorsApp.main_Color_Blue,
                    ColorsApp.Second_Color_Blue,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 45.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 143.w,
                  height: 87.h,
                  child: Text(
                    "Book and schedule with nearest doctor",
                    style: TextStyle(
                        color: ColorsApp.colors1_Contanir,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                ),
                SpaceWidght(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 109.w,
                    height: 38.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorsApp.colors1_Contanir,
                        borderRadius: BorderRadius.circular(48)),
                    child: Text(
                      "Find Nearby",
                      style: TextStyle(
                          color: ColorsApp.main_Color_Blue,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 190.w,
            child: Container(
              width: 136.w,
              height: 197.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/ImageDoctor.png'))),
            ),
          )
        ],
      ),
    );
  }
}
