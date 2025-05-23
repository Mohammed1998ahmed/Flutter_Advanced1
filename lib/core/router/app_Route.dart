import 'package:advancedflutter/core/router/routes.dart';
import 'package:advancedflutter/feature/home/home.dart';
import 'package:advancedflutter/feature/home/ui/navBarButton.dart';
import 'package:advancedflutter/feature/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature/onbording/ui/on_bording.dart';
import '../../feature/register/ui/register.dart';

class App_Route {
  Route generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.on_Obrding_page:
        return MaterialPageRoute(builder: (_) => OnBording());
      case Routes.login_page:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.register_page:
        return MaterialPageRoute(builder: (_) => Register());
      case Routes.home_page:
        return MaterialPageRoute(builder: (_) => NavBar_Button());
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
