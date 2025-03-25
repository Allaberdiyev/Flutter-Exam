import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/welcome_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  final PageController pageController = PageController();

  int activePage = 0;

  Widget scrolling(String image, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        80.he,
        Center(child: Image.asset(image)),
        70.he,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30.sp),
          ),
        ),
      ],
    );
  }

  void checkLastPage() {
    if (pageController.page == 2) {
      Future.delayed(Duration(milliseconds: 300), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (ctx) => WelcomeScreen()),
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();

    pageController.addListener(checkLastPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  activePage = index;
                });
              },
              children: [
                scrolling(
                  AppImages.onBordingPic1,
                  'Welcome To The Fun Magic Media',
                ),
                scrolling(
                  AppImages.onBordingPic2,
                  'Best Social App To Make New Friends',
                ),

                scrolling(
                  AppImages.onBordingPic3,
                  'Enjoy Your Life Every Time',
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              textAlign: TextAlign.center,
              'Dummy Text Is Also Used To Demonstrate The Appearance Of different Typefaces And Layouts',

              style: TextStyle(
                fontSize: 14.h,
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
              ),
            ),
          ),

          100.he,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                width: activePage == index ? 57.w : 25.w,
                height: 10.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  gradient: LinearGradient(
                    colors: [
                      activePage == index ? AppColors.blue2 : AppColors.grey,
                      activePage == index ? AppColors.blue3 : AppColors.grey,
                    ],
                  ),
                ),
                duration: Duration(milliseconds: 100),
              );
            }),
          ),

          70.he,
        ],
      ),
    );
  }
}
