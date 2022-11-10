import 'package:course_project_1/home_screen.dart';
import 'package:course_project_1/responsive/size_config.dart';
import 'package:course_project_1/theme/app_theme.dart';
import 'package:course_project_1/views/record_answer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_project_1/routes/routes.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,

      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().lightTheme(context),
        darkTheme: AppTheme().darkTheme(context),
        themeMode: ThemeMode.light,

        home:  HomeScreen(),
        getPages: getpages,

      ),

    );
  }
}

