import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestimonialsComponent extends StatelessWidget {
  const TestimonialsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
        border: Border.all(
          color: Color(0x803B3B3B),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 8,
          vertical: 13,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://i.postimg.cc/gc8FNnJL/Photo-Profile.png',
              height: 64.h,
              width: 64.w,
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dianne Russell',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '12 April 2021',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0x803B3B3B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 60.w),
                    Container(
                      width: 40.w,
                      height: 33.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0x2015BE77),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 7,
                          vertical: 4,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xff15BE77),
                                size: 20.sp,
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Color(0xff15BE77),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Text(
                  'This Is great, So delicious! You Must\nHere, With Your family . . ',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
