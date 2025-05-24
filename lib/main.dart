import 'dart:io';

import 'package:advancedflutter/core/helper/bolc_services.dart';
import 'package:advancedflutter/core/helper/shared_phreferance.dart';
import 'package:advancedflutter/core/networking/dio_Service.dart';
import 'package:advancedflutter/core/router/app_Route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app_root.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  DioService();
  Bloc.observer = MyBlocObserver();
  SharedPreferencesService().init();
  await Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  HttpOverrides.global = MyHttpOverrides();

  runApp(App_Root(
    app_route: App_Route(),
  ));
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
// 