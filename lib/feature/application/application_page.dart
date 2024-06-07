import 'package:aqarcom/core/values/constants_design.dart';
import 'package:aqarcom/feature/application/widgets/application_widgets.dart';
import 'package:aqarcom/feature/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloc/app_blocs.dart';
import 'bloc/app_events.dart';
import 'bloc/app_states.dart';
class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {

  @override
  void initState(){
    super.initState();
    context.read<HomeCubit>().emitGetHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppState>(builder: (context, state){
      return PopScope(
        canPop:  false,
        child: Container(
          color:kBackgroundColor,
          child: SafeArea(
            child: Scaffold(
              body: buildPage(state.index),
              bottomNavigationBar: Container(
                width: 375.w,
                height: 58.h,
                decoration: BoxDecoration(
                    color: kStoryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.h),
                        topRight: Radius.circular(35.h)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                      )
                    ]
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  currentIndex: state.index,
                  onTap: (value) {
                    context.read<AppBlocs>().add(TriggerAppEvent(value));
                  },
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  selectedItemColor: kStoryColor,
                  unselectedItemColor:Colors.black,
                  items: bottomTabs,
                    selectedLabelStyle:GoogleFonts.almarai(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                        )),
                  unselectedLabelStyle:GoogleFonts.almarai(
                      textStyle: TextStyle(
                        color:Colors.black,
                        letterSpacing: 0,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w900,
                      )),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

}
