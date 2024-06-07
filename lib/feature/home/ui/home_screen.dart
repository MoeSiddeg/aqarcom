import 'package:aqarcom/feature/home/data/models/home_response_model.dart';
import 'package:aqarcom/feature/home/logic/home_cubit.dart';
import 'package:aqarcom/feature/home/logic/home_state.dart';
import 'package:aqarcom/feature/home/ui/widgets/advertisement_card.dart';
import 'package:aqarcom/feature/home/ui/widgets/house_card_widget.dart';
import 'package:aqarcom/feature/home/ui/widgets/image_slider.dart';
import 'package:aqarcom/feature/home/ui/widgets/search_filter_bar_widget.dart';
import 'package:aqarcom/feature/home/ui/widgets/services_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aqarcom/feature/home/ui/widgets/stories_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

  }
  List<Story> stories = [
    Story(imageUrl: 'https://media.istockphoto.com/id/1125028213/vector/portrait-of-cute-african-woman-with-hat.jpg?s=2048x2048&w=is&k=20&c=arwgYpTFmt9_4yb9cB2Or3TI2sL2RrjNhYnMuh8Ap48=',isViewed: true),
    Story(imageUrl: 'https://media.istockphoto.com/id/1369009267/vector/hand-drawn-different-female-faces-seamless-pattern-trendy-woman-face-doodle-texture-with.jpg?s=2048x2048&w=is&k=20&c=YW88C1AK1NrRtxSA3hDOZEp-2vCB-F4gOoBJXHkGjbU=',isViewed: false),
    Story(imageUrl: 'https://media.istockphoto.com/id/507677298/vector/businessman-portrait-flat-design.jpg?s=2048x2048&w=is&k=20&c=lWVP-NUKJZxlMisDeGX31VZV49yPOg6vrmM32Bukl3U=',isViewed: false),
    Story(imageUrl: 'https://media.istockphoto.com/id/177270341/vector/spring.jpg?s=2048x2048&w=is&k=20&c=uKvCKbzk5-tzn1LbXKuONSKFGWZFelQwU2S9bnYzmF0=',isViewed: true),
    Story(imageUrl: 'https://media.istockphoto.com/id/1125028213/vector/portrait-of-cute-african-woman-with-hat.jpg?s=2048x2048&w=is&k=20&c=arwgYpTFmt9_4yb9cB2Or3TI2sL2RrjNhYnMuh8Ap48=',isViewed: false),
    Story(imageUrl: 'https://media.istockphoto.com/id/1369009267/vector/hand-drawn-different-female-faces-seamless-pattern-trendy-woman-face-doodle-texture-with.jpg?s=2048x2048&w=is&k=20&c=YW88C1AK1NrRtxSA3hDOZEp-2vCB-F4gOoBJXHkGjbU=',isViewed: false),
    Story(imageUrl: 'https://media.istockphoto.com/id/507677298/vector/businessman-portrait-flat-design.jpg?s=2048x2048&w=is&k=20&c=lWVP-NUKJZxlMisDeGX31VZV49yPOg6vrmM32Bukl3U=',isViewed: true),
    Story(imageUrl: 'https://media.istockphoto.com/id/1125028213/vector/portrait-of-cute-african-woman-with-hat.jpg?s=2048x2048&w=is&k=20&c=arwgYpTFmt9_4yb9cB2Or3TI2sL2RrjNhYnMuh8Ap48=',isViewed: false),
    Story(imageUrl: 'https://media.istockphoto.com/id/177270341/vector/spring.jpg?s=2048x2048&w=is&k=20&c=uKvCKbzk5-tzn1LbXKuONSKFGWZFelQwU2S9bnYzmF0=',isViewed: false),
    Story(imageUrl: 'https://media.istockphoto.com/id/1369009267/vector/hand-drawn-different-female-faces-seamless-pattern-trendy-woman-face-doodle-texture-with.jpg?s=2048x2048&w=is&k=20&c=YW88C1AK1NrRtxSA3hDOZEp-2vCB-F4gOoBJXHkGjbU=',isViewed: true),
    Story(imageUrl: 'https://media.istockphoto.com/id/177270341/vector/spring.jpg?s=2048x2048&w=is&k=20&c=uKvCKbzk5-tzn1LbXKuONSKFGWZFelQwU2S9bnYzmF0=',isViewed: false),
    Story(imageUrl: 'https://media.istockphoto.com/id/507677298/vector/businessman-portrait-flat-design.jpg?s=2048x2048&w=is&k=20&c=lWVP-NUKJZxlMisDeGX31VZV49yPOg6vrmM32Bukl3U=',isViewed: false),
    // Add more stories here
  ];
  List<String> extractSliderImageUrls(HomeResponseModel homeResponseModel) {
    final imageUrls = <String>[];

    if (homeResponseModel.data?.sliders != null) {
      for (final slider in homeResponseModel.data!.sliders!) {
        if (slider.image != null) {
          imageUrls.add(slider.image!);
        }
      }
    }

    // if (homeResponseModel.data?.ads != null) {
    //   for (final ad in homeResponseModel.data!.ads!) {
    //     if (ad.image != null) {
    //       imageUrls.add(ad.image!);
    //     }
    //   }
    // }
    //
    // if (homeResponseModel.data?.services != null) {
    //   for (final service in homeResponseModel.data!.services!) {
    //     if (service.image != null) {
    //       imageUrls.add(service.image!);
    //     }
    //   }
    // }

    return imageUrls;
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit , HomeState>(builder: (context , state){
      return state.when(initial: (){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }, loading:  (){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }, success: (HomeResponseModel homeResponseModel){
        final imageUrls = extractSliderImageUrls(homeResponseModel);
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      StoriesWidget(stories: stories),
                      SizedBox(
                        height: 15.h,
                      ),
                      ImageCarouselSlider(images: imageUrls),
                      const HouseCard(),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.sp),
                        width: 241.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(246, 199, 18, 0.18),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        height: 90.h,
                        width: 350.w,
                        child: const SearchFilterBarWidget(),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 120, // Set the desired height for the ListView
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: homeResponseModel.data!.ads!.length, // Replace with the actual length of your data
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: AdvertisementCard(
                                imageUrl: homeResponseModel.data!.ads![index].image!, // Replace with your image URLs
                                title: homeResponseModel.data!.ads![index].estateType ?? "unKnown", // Replace with your titles
                                isFavourite: homeResponseModel.data!.ads![index].isFavourite ?? false, // Replace with your favorite status
                                price: homeResponseModel.data!.ads![index].price ?? "125", // Replace with your prices
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.sp),
                        width: 241.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(246, 199, 18, 0.18),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Services',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'All',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 0,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5.w),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.h,
                    horizontal: 0.w,
                  ),
                  sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 1.6,
                    ),
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ServicesWidget(
                            width: 176,
                            height :116,
                            imagePath: homeResponseModel.data!.services![index].image!,
                            labelText: homeResponseModel.data!.services![index].name ?? 'Real Estate Marketing',
                          ),
                        );
                      },
                      childCount: homeResponseModel.data!.services!.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }, error:  (error){
        return  Center(
          child: Text(error),
        );
      });
    });
  }
}