import 'package:advancedflutter/core/widght/circalarSignIn.dart';
import 'package:flutter/material.dart';

class TypeSignIn extends StatelessWidget {
  const TypeSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircularWidght(assetName: "assets/images/google.png"),
        CircularWidght(assetName: "assets/images/facebook.png"),
        CircularWidght(assetName: "assets/images/apple.png"),
      ],
    );
  }
}
