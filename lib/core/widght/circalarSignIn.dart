import 'package:advancedflutter/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularWidght extends StatelessWidget {
  const CircularWidght(
      {super.key, required this.assetName, this.width, this.height});
  final String assetName;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 46.w,
      height: height ?? 46.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorsApp.circular_SignIn,
          image: DecorationImage(image: AssetImage(assetName))),
    );
  }
}
