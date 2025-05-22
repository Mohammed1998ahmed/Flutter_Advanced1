import 'package:advancedflutter/core/router/app_Route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app_root.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(App_Root(
    app_route: App_Route(),
  ));
}
