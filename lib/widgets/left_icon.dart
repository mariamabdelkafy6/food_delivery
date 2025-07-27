import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeftIcon extends StatelessWidget {
  const LeftIcon({super.key, required this.title, required this.desc});
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: Color(0x25F9A84D),
          ),
          child: Transform.scale(
            scale: 0.6,
            child: Image.network(
              'https://i.postimg.cc/Sxh0YN2Q/Vector.png',
              color: Color(0xffDA6317),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 19.h),
        Text(
          desc,
          style: TextStyle(
            fontSize: 12.sp,
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
