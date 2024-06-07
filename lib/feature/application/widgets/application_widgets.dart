import 'package:aqarcom/core/values/constants_design.dart';
import 'package:aqarcom/feature/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


Widget buildPage(int index) {
  List<Widget> widget = [
    const HomeScreen(),
    const Center(child: Text('Maps'),),
    const Center(child: Text('ADD'),),
    const Center(child: Text('SERVICES'),),
    const Center(child: Text('MORE'),)
  ];

  return widget[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
      label: "Home",
      icon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: SvgPicture.asset('assets/svg/home_icon.svg'),
      ),
      activeIcon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: SvgPicture.asset('assets/svg/home_icon.svg', color: kStoryColor,),
      )),
  BottomNavigationBarItem(
      label: "Map",
      icon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: SvgPicture.asset('assets/svg/map_icon.svg'),
      ),
      activeIcon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: SvgPicture.asset('assets/svg/map_icon.svg', color: kStoryColor,),
      )),
  BottomNavigationBarItem(
      label: "",
      icon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: Icon(
          Icons.add,
          size: 20.h,
        ),
      ),
      activeIcon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: Icon(
          Icons.add,
          color: kStoryColor,
          size: 20.h,
        ),
      )),
  BottomNavigationBarItem(
      label: "Services",
      icon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: SvgPicture.asset('assets/svg/services_icon.svg'),
      ),
      activeIcon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: SvgPicture.asset('assets/svg/services_icon.svg', color: kStoryColor,),
      )),
  BottomNavigationBarItem(
    label: "More",
    icon: SizedBox(
      width: 20.h,
      height: 20.h,
      child: SvgPicture.asset('assets/svg/more_icon.svg'),
    ),
    activeIcon: SizedBox(
      width: 20.h,
      height: 20.h,
      child: SvgPicture.asset('assets/svg/more_icon.svg' , color: kStoryColor,),
    ),
  ),
];
