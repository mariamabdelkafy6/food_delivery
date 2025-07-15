import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCardExample extends StatelessWidget {
  const NotificationCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 81.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22), color: Colors.white),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://i.postimg.cc/527j7qXj/Photo.png',
              height: 62.h,
            ),
            Spacer(flex: 2),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Anamwp',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Your Order Just Arrived!',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0x803B3B3B),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 15),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 8.0),
              child: Text(
                '20:00',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0x803B3B3B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
