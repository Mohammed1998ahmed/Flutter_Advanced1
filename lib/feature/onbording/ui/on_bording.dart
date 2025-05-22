import 'package:advancedflutter/core/helper/extension.dart';
import 'package:advancedflutter/core/router/routes.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:advancedflutter/feature/onbording/ui/widght/top_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widght/bottom_Click.dart';
import 'widght/stack_image_Text.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 31.w),
          child: Column(
            children: [
              Top_App_Bar(),
              SpaceWidght(
                height: 40.h,
              ),
              StackImageText(),
              SpaceWidght(
                height: 32.h,
              ),
              BottomClick(
                nameBottom: "Get Started",
                onPressed: () {
                  context.pushNamed(Routes.login_page);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
