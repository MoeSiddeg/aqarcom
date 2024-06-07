import 'dart:collection';


import 'package:aqarcom/core/values/constants_design.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageCarouselSlider extends StatefulWidget {
  List<String> images;

  ImageCarouselSlider({required this.images});
  @override
  _ImageCarouselSliderState createState() => _ImageCarouselSliderState();
}

class _ImageCarouselSliderState extends State<ImageCarouselSlider> {
  late List<String> _images;
  @override
  void initState() {
    _images = widget.images;
  }

  final CarouselController _carouselController = CarouselController();

  int _currentIndex = 0;
  bool isFavorited = false; // Initially set to false

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  carouselController: _carouselController,
                  items: (_images != null && _images.isNotEmpty)
                      ? _images.map((image) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.0),
                      ),
                      clipBehavior: Clip.hardEdge, // Add this line
                      child: SizedBox(
                        width: 341.w,
                        height: 150.h, // Adjust height as needed
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child; // Loaded successfully
                            return Image.asset(
                              'assets/images/placeholder.png',
                              fit: BoxFit.cover,
                            ); // Show placeholder while loading
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/errorload.png',
                              fit: BoxFit.cover,
                            ); // Show error image
                          },
                        ),
                      ),
                    );
                  }).toList()
                      : [
                    Image.asset(
                      'assets/images/placeholder.png',
                      fit: BoxFit.cover,
                    )
                  ], // Use a placeholder image if _images is null or empty
                  options: CarouselOptions(
                    height: 150.h, // Match the height of the SizedBox
                    viewportFraction: 1.0, // Each item occupies the entire viewport horizontally
                    initialPage: 0,
                    enableInfiniteScroll: (_images != null && _images.length > 1), // Check if there's more than one image
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration: const Duration(milliseconds: 300),
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  top: 136.h,
                  left: 170.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _images.asMap().entries.map((entry) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == entry.key
                              ? kStoryColor
                              : const Color.fromRGBO(255, 255, 255, 0.7),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}