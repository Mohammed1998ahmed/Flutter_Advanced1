import 'package:advancedflutter/core/widght/space.dart';
import 'package:advancedflutter/core/widght/textFromFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/theme/colors.dart';
import '../../logic/cubit/register_cubit.dart';

// ignore: must_be_immutable
class TextFromFeild_App extends StatelessWidget {
  TextFromFeild_App({super.key, required this.cubit});
  final RegisterCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        publicTextFromField(
            hintText: "  Email", controller: cubit.controllerEmail),
        SpaceWidght(
          height: 16.h,
        ),
        publicTextFromField(
            hintText: "  Password", controller: cubit.controllerPassWord),
        SpaceWidght(
          height: 16.h,
        ),
        IntlPhoneField(
          decoration: InputDecoration(
            labelText: "Your number",
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    BorderSide(color: ColorsApp.main_Color_Blue, width: 1.5)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: ColorsApp.color_Border_TextFromFeild, width: 1.5),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          initialCountryCode: "SA", // يمكنك تغيير رمز الدولة الافتراضي
          onChanged: (phone) {
            cubit.chaingNumber_Phone(phone.completeNumber);
            print("Your number ${phone.completeNumber}");
          },
        ),
      ],
    );
  }
}
