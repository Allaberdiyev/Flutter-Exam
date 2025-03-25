import 'package:flutter/material.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_exam/utils/bottomBar.dart';
import 'package:flutter_exam/utils/home_screen_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  100.he,
                  Image.asset(AppImages.comuni, width: 90),
                  Spacer(),
                  Image.asset(AppImages.settings, color: AppColors.black),
                  17.wi,
                  Image.asset(
                    AppImages.search,
                    color: AppColors.black,
                    width: 20,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  36.wi,
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment(1.4, 1.4),
                        children: [
                          Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.image1),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 23.w,
                            height: 23.h,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [AppColors.blue2, AppColors.blue3],
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Icon(
                              Icons.add,
                              color: AppColors.white,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      13.he,
                      Text(
                        'You',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          letterSpacing: 0,
                          color: AppColors.black2,
                        ),
                      ),
                    ],
                  ),
                  16.wi,
                  people(AppImages.image2, 'Jacob'),
                  16.wi,
                  people(AppImages.image3, 'Luna'),
                  16.wi,
                  people(AppImages.image4, 'John'),
                  16.wi,
                  people(AppImages.image5, 'Netaliya'),
                  16.wi,
                  people(AppImages.image1, 'Rohn'),
                ],
              ),
            ),
            30.he,
            infoContainer(
              context,
              AppImages.image6,
              'Alexender Walker',
              'Engineering Student',
              InfoType.text,
              'Dummy Text Is Also Used To Demonstrate The Appearance Of Different Typefaces And Layouts.',
              '127',
              '87',
            ),
            25.he,
            infoContainer(
              context,

              AppImages.image7,
              'Jessica Jones',
              'Socialist',
              InfoType.image,
              AppImages.city,
              '325',
              '98',
            ),
            90.he,
          ],
        ),
      ),

      bottomNavigationBar: Bottombar(),
    );
  }
}
