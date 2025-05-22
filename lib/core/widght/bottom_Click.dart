import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class BottomClick extends StatelessWidget {
  const BottomClick({super.key, this.onPressed, required this.nameBottom});
  final void Function()? onPressed;
  final String nameBottom;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.w, // عرض الزر
      height: 52.h, // ارتفاع الزر

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // تعديل الحواف
          ),
          backgroundColor: ColorsApp.main_Color_Blue, // لون الخلفية
        ),
        child: Text(
          nameBottom,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: ColorsApp.colors1_Contanir,
          ),
        ),
      ),
    );
  }
}
