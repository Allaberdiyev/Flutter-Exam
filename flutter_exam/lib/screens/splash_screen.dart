import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/onBoarding_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (ctx) => Onbording()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Expanded(child: Center(child: Image.asset(AppImages.cLogo))),

            Container(
              width: 70.w,
              height: 3.h,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            20.he,

            Text(
              'FROM SOCIAL-X',
              style: TextStyle(
                fontSize: 19.sp,
                color: AppColors.grey,
                letterSpacing: 6,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
            55.he,
          ],
        ),
      ),
    );
  }
}
