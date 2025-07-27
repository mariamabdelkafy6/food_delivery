import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        child: Column(
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
            SizedBox(height: 14.h),
            Text(
              'Notification',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: 12.h),
            KindOfNotification(),
            SizedBox(height: 12.h),
            KindOfNotification(),
            SizedBox(height: 12.h),
            KindOfNotification(),
          ],
        ),
      ),
    );
  }
}

class KindOfNotification extends StatelessWidget {
  const KindOfNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.w,
      height: 105.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Row(
          children: [
            Image.network(
              'https://i.postimg.cc/vmHYD9gr/checked-1-1.png',
              height: 60.h,
              width: 40.w,
            ),
            SizedBox(width: 28.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your order has been taken by\nthe driver',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff09051C),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Recently',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0x703B3B3B),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
