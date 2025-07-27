import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/chat/widgets/notification_card_example.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            'Chat',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.sp,
            ),
          ),
          SizedBox(height: 12.h),
          NotificationCardExample(),
          SizedBox(height: 12.h),
          NotificationCardExample(),
          SizedBox(height: 12.h),
          NotificationCardExample(),
        ],
      ),
    );
  }
}
