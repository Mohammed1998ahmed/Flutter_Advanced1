import 'package:advancedflutter/core/theme/colors.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackImageText extends StatelessWidget {
  const StackImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 443.w,
      height: 540.h,
      child: Stack(
        children: [
          Container(
            width: 443.w,
            height: 443.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Group.png'))),
          ),
          Container(
            width: 375.w,
            height: 491.h,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(0, 255, 255, 255),
                ColorsApp.colors1_Contanir,
              ], begin: Alignment.center, end: Alignment.bottomCenter),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/doctor.png'))),
          ),
          Positioned(
            top: 375.h,
            left: 28.w,
            child: Container(
              width: 315.w,
              height: 144.h,
              child: Column(
                children: [
                  Text(
                    "Best Doctor Appointment App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32.sp,
                        color: ColorsApp.main_Color_Blue),
                  ),
                  SpaceWidght(
                    height: 18.h,
                  ),
                  Text(
                    "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: ColorsApp.second_Text_Color_Black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
