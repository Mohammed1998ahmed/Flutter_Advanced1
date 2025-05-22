import 'package:advancedflutter/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularSignIn extends StatelessWidget {
  const CircularSignIn({super.key, required this.assetName});
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46.w,
      height: 46.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorsApp.circular_SignIn,
          image: DecorationImage(image: AssetImage(assetName))),
    );
  }
}
