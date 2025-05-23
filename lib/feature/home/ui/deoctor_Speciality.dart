import 'package:advancedflutter/core/theme/colors.dart';
import 'package:advancedflutter/core/widght/circalarSignIn.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Deoctor_Speciality extends StatelessWidget {
  const Deoctor_Speciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 131.h,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Doctor Speciality",
                style: TextStyle(
                    color: ColorsApp.main_Color_Black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                      color: ColorsApp.main_Color_Blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp),
                ),
              )
            ],
          ),
          Container(
            width: 343.w,
            height: 79.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              separatorBuilder: (BuildContext context, int index) => index == 0
                  ? Padding(padding: EdgeInsets.only(right: 16.w))
                  : Padding(padding: EdgeInsets.only(left: 16.w)),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    CircularWidght(
                      assetName: 'assets/images/Brain1.png',
                      height: 56.h,
                      width: 56.w,
                    ),
                    SpaceWidght(
                      height: 4.h,
                    ),
                    Text(
                      "General",
                      style: TextStyle(
                          color: ColorsApp.main_Color_Black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
