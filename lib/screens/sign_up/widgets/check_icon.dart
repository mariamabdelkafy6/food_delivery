import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckIcon extends StatelessWidget {
  const CheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      width: 22.w,
      // ignore: sort_child_properties_last
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 17,
      ),
      decoration: BoxDecoration(
        color: Color(0xff15BE77),
        borderRadius: BorderRadius.circular(50.sp),
      ),
    );
  }
}
