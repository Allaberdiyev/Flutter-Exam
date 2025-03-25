import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/messages_screen.dart';
import 'package:flutter_exam/screens/personal_profile_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_exam/screens/notification_screen.dart';
import 'package:flutter_exam/screens/home_screen.dart';

int _selectedIndex = 0;

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

final List<Widget> screens = [
  HomeScreen(),
  MessagesScreen(),
  NotificationScreen(),
  PersonalProfileScreen(),
];

class _BottombarState extends State<Bottombar> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,

        elevation: 0,
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
    );
  }

  Widget _buildNavItem(String icon, int index) {
    return GestureDetector(
      onTap:
          _selectedIndex == index
              ? () {}
              : () {
                _onItemTapped(index);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screens[index]),
                );
              },
      child: Image.asset(
        icon,
        width: 24.w,
        color: _selectedIndex == index ? AppColors.blue2 : AppColors.grey3,
      ),
    );
  }

  Widget _buildCenterButton() {
    return GestureDetector(
      onTap: () => _onItemTapped(2),
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
