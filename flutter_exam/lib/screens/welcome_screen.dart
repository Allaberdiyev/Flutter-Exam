import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/register_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 220.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.gradientShape),
                fit: BoxFit.cover,
              ),
            ),
          ),
          162.he,
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85.0),
                  child: Column(
                    children: [
                      Text(
                        'WELCOME',
                        style: TextStyle(
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black1,
                        ),
                      ),

                      18.he,
                      Container(
                        width: 48.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.black1,
                        ),
                      ),
                      18.he,
                      Text(
                        textAlign: TextAlign.center,
                        'OUR APP LATEST FEATURES MAKE YOU CRAZY',
                        style: TextStyle(
                          color: AppColors.black2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                140.he,
                Container(
                  width: 260.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    gradient: LinearGradient(
                      colors: [AppColors.blue2, AppColors.blue3],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (ctx) => RegisterScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                    ),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        35.wi,

                        Text(
                          'Let’s Get Started',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.45,
                            fontSize: 18.sp,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 39.w,
                          height: 39.h,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30.sp,
                              color: AppColors.blue3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
