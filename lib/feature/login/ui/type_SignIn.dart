import 'package:advancedflutter/core/widght/circalarSignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../logic/cubit/login_cubit.dart';

class TypeSignIn extends StatelessWidget {
  const TypeSignIn({super.key, required this.cubit});
  final LoginCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
            onTap: () async {
              print("Google *********");
              await cubit.signInWithGoogle();
            },
            child: CircularWidght(assetName: "assets/images/google.png")),
        GestureDetector(
            onTap: () async {
              await cubit.signInWithGitHub(context: context);
            },
            child: CircularWidght(assetName: "assets/images/facebook.png")),
        CircularWidght(assetName: "assets/images/apple.png"),
      ],
    );
  }
}
