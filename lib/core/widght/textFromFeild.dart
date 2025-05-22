import 'package:advancedflutter/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextFormField publicTextFromField(
    {required String hintText,
    TextStyle? hintStyle,
    double? radiusEnabled,
    double? radiusfocused,
    Color? colorfocused,
    Color? colorEnabled,
    Widget? suffixIcon,
    bool? obscureText,
    TextInputType? keyboardType,
    required TextEditingController controller,
    String? Function(String?)? validator}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText ?? false,
    keyboardType: keyboardType,
    // style: TextStyle_App.Input_Text_From_Style,
    validator: validator,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusfocused ?? 16),
          borderSide: BorderSide(
              color: colorfocused ?? ColorsApp.main_Color_Blue, width: 1.5)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: colorEnabled ?? ColorsApp.color_Border_TextFromFeild,
            width: 1.5),
        borderRadius: BorderRadius.circular(radiusEnabled ?? 16),
      ),
      hintText: hintText,
      hintStyle: TextStyle(
          color: ColorsApp.color_Text_in_TextFromFeild,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500),
      suffixIcon: suffixIcon ?? null,
      filled: true,
      fillColor: ColorsApp.color_fill_TextFromFeild.withOpacity(0.6),
    ),
  );
}
