import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/set_location/set_location_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';

class UploadPreviewScreen extends StatelessWidget {
  const UploadPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 24,
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeftIcon(
                title: 'Upload Your Photo\nProfile',
                desc:
                    'This data will be displayed in your account\n profile for security',
              ),
              SizedBox(height: 59.h),
              Center(
                child: Image.network(
                  'https://i.postimg.cc/N0ypQVYq/Photo.png',
                  width: 245.w,
                  height: 238.h,
                ),
              ),
              SizedBox(height: 166.h),
              Center(
                  child: Button(
                title: 'Next',
                returnScreen: SetLocationScreen(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
