import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Top_App_Bar extends StatelessWidget {
  const Top_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 38.w,
          height: 38.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/iconApp.png"),
                  fit: BoxFit.cover)),
        ),
        Text(
          " Docdoc",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.sp),
        )
      ],
    );
  }
}
