import 'package:advancedflutter/core/widght/bottom_Click.dart';
import 'package:advancedflutter/core/widght/space.dart';
import 'package:advancedflutter/feature/register/logic/cubit/register_cubit.dart';
import 'package:advancedflutter/feature/register/ui/ui/chickBox.dart';
import 'package:advancedflutter/feature/register/ui/ui/or_SignIn.dart';
import 'package:advancedflutter/feature/register/ui/ui/textFromFeild.dart';
import 'package:advancedflutter/feature/register/ui/ui/textSpanStyle.dart';
import 'package:advancedflutter/feature/register/ui/ui/top_TextAppBar.dart';
import 'package:advancedflutter/feature/register/ui/ui/type_SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = RegisterCubit.getObject(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
                top: 91.h, left: 31.w, right: 24.w, bottom: 29.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Top_Text_App_Bar(),
                  SpaceWidght(
                    height: 36.h,
                  ),
                  TextFromFeild_App(
                    cubit: cubit,
                  ),
                  SpaceWidght(
                    height: 16.h,
                  ),
                  ChickBox(),
                  SpaceWidght(
                    height: 32.h,
                  ),
                  BottomClick(
                    nameBottom: "Sign Up",
                    onPressed: () {
                      cubit.post_Register(
                          context: context,
                          email: cubit.controllerEmail.text,
                          passWord: cubit.controllerPassWord.text,
                          phoneNumber: cubit.completeNumber.toString());
                      print("Login");
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
      },
    );
  }
}
