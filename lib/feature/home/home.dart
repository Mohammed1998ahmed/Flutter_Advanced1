import 'package:advancedflutter/core/widght/space.dart';
import 'package:advancedflutter/feature/home/logic/cubit/home_cubit.dart';
import 'package:advancedflutter/feature/home/ui/cardWidght.dart';
import 'package:advancedflutter/feature/home/ui/deoctor_Speciality.dart';
// import 'package:advancedflutter/feature/home/ui/navBarButton.dart';
import 'package:advancedflutter/feature/home/ui/recommendation_Doctor.dart';
import 'package:advancedflutter/feature/home/ui/top_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..get_Specialition(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = HomeCubit.getObject(context);
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Column(
                children: [
                  Top_AppBar(),
                  CardWidght(),
                  SpaceWidght(
                    height: 24.h,
                  ),
                  Deoctor_Speciality(
                    cubit: cubit,
                  ),
                  SpaceWidght(
                    height: 24.h,
                  ),
                  Recommendation_Doctor(
                    cubit: cubit,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
