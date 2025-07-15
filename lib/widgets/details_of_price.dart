import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceDetails extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const PriceDetails({
    required this.title,
    required this.price,
  });
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}

class PriceDetailsContainer extends StatelessWidget {
  const PriceDetailsContainer({
    super.key,
  });
  final bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isEnabled ? 1.0 : 0.5,
      child: IgnorePointer(
        ignoring: !isEnabled,
        child: Container(
          width: 347.w,
          height: 125.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 14,
            ),
            child: Row(
              children: [
                ColorFiltered(
                  colorFilter: isEnabled
                      ? ColorFilter.mode(Colors.transparent, BlendMode.multiply)
                      : ColorFilter.mode(Colors.grey, BlendMode.saturation),
                  child: Image.network(
                    'https://i.postimg.cc/8zdpMxMp/Menu-Photo.png',
                    height: 62.h,
                    width: 62.w,
                  ),
                ),
                SizedBox(width: 18.w),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Spicy fresh crab',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xff09051C),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Waroenk kita',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0x8009051C),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '\$ 35',
                        style: TextStyle(
                          color: isEnabled ? Color(0xff15BE77) : Colors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
