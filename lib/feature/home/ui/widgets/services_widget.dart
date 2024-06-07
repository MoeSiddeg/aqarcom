import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesWidget extends StatelessWidget {
  double width;
  double height;
  String imagePath;
  String labelText;

  ServicesWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.imagePath,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.sp),
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.sp),
        border: Border.all(width: 1.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.sp),
            child: Image.network(
              imagePath,
              fit: BoxFit.cover,
              width: width.w,
              height: height.h,
            ),
          ),
          Positioned(
              bottom: 15,
              child: Padding(
                padding:  EdgeInsets.only(left: 5.w),
                child: FittedBox(
                  child: Text(
                    labelText,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.black,
                        letterSpacing: 0,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
