import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/home_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(AppImages.me),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aldebaror Reo",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.blue2,
                          size: 20,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "United State",
                          style: TextStyle(color: AppColors.black1),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Image.asset(AppImages.write, width: 25),
                ),
              ],
            ),
            40.he,
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Divider(),
            ),

            _buildMenuItem(AppImages.home2, "Home"),
            _buildMenuItem(AppImages.www, "Activity", badge: "12"),
            _buildMenuItem(AppImages.persons, "Friends"),
            _buildMenuItem(AppImages.message, "Messages", badge: "99+"),
            _buildMenuItem(AppImages.albom, "Albums"),
            _buildMenuItem(AppImages.heart, "Favorites"),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Divider(),
            ),
            _buildMenuItem(AppImages.settings2, "Setting"),
            _buildMenuItem(AppImages.logout, "Logout"),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String image, String title, {String? badge}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(image, width: 25),
          SizedBox(width: 30),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          Spacer(),
          if (badge != null)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.blue2, AppColors.blue3],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                badge,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
