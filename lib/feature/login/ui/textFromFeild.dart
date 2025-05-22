import 'package:advancedflutter/core/widght/space.dart';
import 'package:advancedflutter/core/widght/textFromFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TextFromFeild_App extends StatelessWidget {
  TextFromFeild_App({super.key});
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        publicTextFromField(hintText: "  Email", controller: controllerEmail),
        SpaceWidght(
          height: 16.h,
        ),
        publicTextFromField(
            hintText: "  Password", controller: controllerPassWord)
      ],
    );
  }
}
