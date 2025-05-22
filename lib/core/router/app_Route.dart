import 'package:advancedflutter/core/router/routes.dart';
import 'package:advancedflutter/feature/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature/onbording/ui/on_bording.dart';

class App_Route {
  Route generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.on_Obrding_page:
        return MaterialPageRoute(builder: (_) => OnBording());
      case Routes.login_page:
        return MaterialPageRoute(builder: (_) => Login());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text(
                      "Not Fount Page",
                      style: TextStyle(
                          fontSize: 18.dg,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    ),
                  ),
                ));
    }
  }
}
