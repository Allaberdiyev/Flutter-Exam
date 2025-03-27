import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/messages_screen.dart';
import 'package:flutter_exam/screens/personal_profile_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_exam/screens/notification_screen.dart';
import 'package:flutter_exam/screens/home_screen.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int chooseIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    NotificationScreen(),
    MessagesScreen(),
    PersonalProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      chooseIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[chooseIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(AppImages.home, 0),
              _buildNavItem(AppImages.chat, 1),
              _buildCenterButton(),
              _buildNavItem(AppImages.notf, 2),
              _buildNavItem(AppImages.person, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String icon, int index) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Image.asset(
        icon,
        width: 25.w,
        color: chooseIndex == index ? AppColors.blue2 : AppColors.grey3,
      ),
    );
  }

  Widget _buildCenterButton() {
    return GestureDetector(
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [AppColors.blue2, AppColors.blue3]),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 1),
          ],
        ),
        child: Icon(Icons.add, color: Colors.white, size: 30.w),
      ),
    );
  }
}
