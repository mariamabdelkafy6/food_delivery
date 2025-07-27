import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoComponent extends StatefulWidget {
  const LogoComponent({super.key});

  @override
  State<LogoComponent> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoComponent> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://i.postimg.cc/Jn1Qn8H1/Logo.png',
          height: 139.h,
          width: 175.w,
        ),
        Text(
          'FoodNinja',
          style: GoogleFonts.viga(
            textStyle: TextStyle(
              color: Color(0xff15BE77),
              fontSize: 40.sp,
            ),
          ),
        ),
        Text('Deliver Favorite Food   ',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Color(0xff09051C),
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),
            ))
      ],
    );
  }
}
