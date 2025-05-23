import 'package:advancedflutter/core/theme/colors.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recommendation_Doctor extends StatelessWidget {
  const Recommendation_Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 270.h,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Recommendation Doctor",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: ColorsApp.main_Color_Black),
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
              height: 216.h,
              child: ListView.separated(
                padding: EdgeInsets.only(top: 0.w),
                itemCount: 25,
                separatorBuilder: (BuildContext context, int index) =>
                    SpaceWidght(
                  height: 16.h,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 343.w,
                    height: 126.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 110.w,
                          height: 110.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/recommandDoctor.png'))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, top: 25.h, right: 8.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Randy Wigham",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: ColorsApp.main_Color_Black),
                              ),
                              Text(
                                "General | RSUD Gatot Subroto",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: ColorsApp.second_Text_Color_Black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFD600),
                                  ),
                                  Text(
                                    " 4.8 ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp,
                                        color:
                                            ColorsApp.second_Text_Color_Black),
                                  ),
                                  Text(
                                    "(4,279 reviews)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp,
                                        color:
                                            ColorsApp.second_Text_Color_Black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
