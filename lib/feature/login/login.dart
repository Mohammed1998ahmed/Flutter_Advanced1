import 'package:advancedflutter/core/helper/extension.dart';
import 'package:advancedflutter/core/router/routes.dart';
import 'package:advancedflutter/core/widght/bottom_Click.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:advancedflutter/feature/login/ui/chickBox.dart';
import 'package:advancedflutter/feature/login/ui/or_SignIn.dart';
import 'package:advancedflutter/feature/login/ui/textFromFeild.dart';
import 'package:advancedflutter/feature/login/ui/textSpanStyle.dart';
import 'package:advancedflutter/feature/login/ui/top_TextAppBar.dart';
import 'package:advancedflutter/feature/login/ui/type_SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: 91.h, left: 31.w, right: 24.w, bottom: 29.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Top_Text_App_Bar(),
              SpaceWidght(
                height: 36.h,
              ),
              TextFromFeild_App(),
              SpaceWidght(
                height: 16.h,
              ),
              ChickBox(),
              SpaceWidght(
                height: 32.h,
              ),
              BottomClick(
                nameBottom: "Login",
                onPressed: () {
                  print("Login");
                  context.pushNamed(Routes.home_page);
                },
              ),
              SpaceWidght(
                height: 46.h,
              ),
              OrSignIn(),
              SpaceWidght(
                height: 32.h,
              ),
              TypeSignIn(),
              SpaceWidght(
                height: 32.h,
              ),
              TextSpanStyle()
            ],
          ),
        ),
      ),
    );
  }
}
