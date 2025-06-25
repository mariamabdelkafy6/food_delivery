import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearestRestaurant extends StatelessWidget {
  const NearestRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20.0),
      child: Container(
        width: 147.w,
        height: 184.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 21,
            vertical: 18,
          ),
          child: Column(
            children: [
              Image.network(
                'https://i.postimg.cc/FFj0Sz8r/Resturant-Image1.png',
                width: 96.w,
                height: 73.h,
              ),
              SizedBox(height: 17.h),
              Text(
                'Vegan Resto',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '12 Mins',
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
