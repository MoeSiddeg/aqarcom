import 'package:aqarcom/core/routes/pages.dart';
import 'package:aqarcom/core/values/constants_design.dart';
import 'package:aqarcom/feature/application/application_page.dart';
import 'package:aqarcom/feature/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/dependency_injection.dart';

Future<void> main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Colors.black
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiBlocProvider(
        providers: [...AppPages.allBlocProviders(context)],
    child:  ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: kBackgroundColor,
                dividerColor: Colors.transparent,
               ),
            home: ApplicationPage(),
          )
    ));
  }
}
