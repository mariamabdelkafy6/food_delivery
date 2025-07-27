import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20.0),
      child: Container(
        width: 149.w,
        height: 190.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: Color(0x803B3B3B),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 21,
            vertical: 20,
          ),
          child: Column(
            children: [
              Image.network(
                'https://i.postimg.cc/nr7mgqWW/image-34.png',
                width: 71.w,
                height: 71.h,
              ),
              SizedBox(height: 17.h),
              Text(
                'Spicy fresh crab',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '12\$',
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Color(0x80000000),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
