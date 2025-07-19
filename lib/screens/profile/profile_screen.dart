import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/profile/widgets/custom_profile_details_draggable_scrollable_sheet.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://i.postimg.cc/KzSYrqmp/Photo-Profile.png',
            width: double.infinity,
            fit: BoxFit.cover,
            height: 320.h,
          ),
          SizedBox(height: 30.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFE0A6),
            ),
            onPressed: () {
              _showDraggableSheet(context);
            },
            child: Container(
              width: 200.w,
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
              ),
              child: Center(
                child: Text(
                  'Show My Favorite Products!!',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffFEAD1D),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _showDraggableSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => const CustomProfileDetailsDraggableScrollableSheet(),
  );
}
