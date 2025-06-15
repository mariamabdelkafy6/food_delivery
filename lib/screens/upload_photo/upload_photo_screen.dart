import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/upload_preview/upload_preview_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';

class UploadPhotoScreen extends StatelessWidget {
  const UploadPhotoScreen({super.key});

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
              SizedBox(height: 20.h),
              _KindOfUploadPhoto(
                image: 'https://i.postimg.cc/13vpnKMm/Gallery.png',
                title: 'From Gallery',
              ),
              SizedBox(height: 20.h),
              _KindOfUploadPhoto(
                image: 'https://i.postimg.cc/prSwLj7q/camera.png',
                title: 'Take Photo',
              ),
              SizedBox(height: 165.h),
              Center(
                  child: Button(
                title: 'Next',
                returnScreen: UploadPreviewScreen(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class _KindOfUploadPhoto extends StatelessWidget {
  const _KindOfUploadPhoto({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 129.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.sp),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            image,
            width: 50.w,
            height: 50.h,
          ),
          SizedBox(height: 9.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
