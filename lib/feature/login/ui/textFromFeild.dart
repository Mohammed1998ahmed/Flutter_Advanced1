import 'package:advancedflutter/core/widght/space.dart';
import 'package:advancedflutter/core/widght/textFromFeild.dart';
import 'package:advancedflutter/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TextFromFeild_App extends StatelessWidget {
  TextFromFeild_App({super.key, required this.cubit});
  final LoginCubit cubit;
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
            hintText: "  Password", controller: cubit.controllerPassWord)
      ],
    );
  }
}
