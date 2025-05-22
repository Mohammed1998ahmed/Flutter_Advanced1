import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChickBox extends StatefulWidget {
  const ChickBox({super.key});

  @override
  State<ChickBox> createState() => _ChickBoxState();
}

class _ChickBoxState extends State<ChickBox> {
  bool isChecked = false; // حالة التحديد
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
        ),
        Text(
          "Remember me",
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot Password?",
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
