import 'package:aqarcom/feature/home/ui/widgets/custom_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvertisementCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  bool isFavourite;
   AdvertisementCard({super.key, required this.imageUrl , required this.title , required this.price , required this.isFavourite});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174.w,
      height: 120.h,
      // padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
             CustomPaint(
            size: const Size(174,(120)), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16),
                      ),       child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.bed, color: Colors.purple , size: 16.sp,),
                          Text(
                              '3 rooms',
                              style: GoogleFonts.cairo(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.local_florist, color: Colors.green, size: 16.sp),
                          Text('1 garden',
                              style: GoogleFonts.cairo(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.square_foot, color: Colors.orange , size: 16.sp),
                          SizedBox(width: 2,),
                          Text('500 m²',
                              style: GoogleFonts.cairo(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: SizedBox(
                    height: 120.h,
                    width: 67.7.w,
                    child: Image.network(imageUrl,
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            left : 132,
            child: IconButton(
              icon:  Icon(
                  isFavourite ? Icons.favorite :Icons.favorite_border, color: Colors.red),
              onPressed: () {
                // Handle favorite button tap
              },
            ),
          ),
          const Positioned(
            top: 100,
            right : 145,
            child: Text(
              '1300', // Replace with actual time if needed
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
          ),
          Positioned(
            bottom: 10.0, // Adjust positioning as needed
            right: 10.0, // Adjust positioning as needed
            child: Text(
              '500', // Text content
              style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  color: Colors.white, // Adjust color as needed
                  fontSize: 12.sp, // Adjust font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
