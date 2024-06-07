import 'package:aqarcom/core/values/constants_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class HouseCard extends StatelessWidget {
  const HouseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118.h,
      width: 375.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top :24.h , left: 16.w , right: 8.w , bottom: 8.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Are you looking for your suitable property?'  ,  style: GoogleFonts.cairo(
            textStyle: TextStyle(
            color: Colors.white,
              letterSpacing: 0,
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
            )),),
                Container(
                  margin: EdgeInsets.only(top: 15.h, right: 23.w, left: 10.w),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kStoryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.w),
                      ),
                      minimumSize: Size(145.w, 40.h),
                    ),
                    child: Text(
                      'Order now',
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 118.h,
            width: 150.w,
            child: Image.asset(
              'assets/images/pngwing.png',
            ),
          ),

        ],
      ),
    );
  }
}
