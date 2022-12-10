import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_task/screens/view.dart';
import 'package:social_task/shared/const/colors.dart';
import 'package:social_task/shared/const/router.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => child!,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.normal,
            color: textPrimary,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const NavBarScreens(),
      navigatorKey: navigatorKey,
    );
  }
}
