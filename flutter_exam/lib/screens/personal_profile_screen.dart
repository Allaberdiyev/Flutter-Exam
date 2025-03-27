import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/settings_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalProfileScreen extends StatefulWidget {
  PersonalProfileScreen({super.key});

  @override
  State<PersonalProfileScreen> createState() => _PersonalProfileScreenState();
}

class _PersonalProfileScreenState extends State<PersonalProfileScreen> {
  final List<String> storyImages = [
    AppImages.add2,
    AppImages.story1,
    AppImages.story2,
    AppImages.story3,
    AppImages.story4,
    AppImages.story5,
    AppImages.story3,
    AppImages.story4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.black),
        ),
        title: Text(
          'Profil',
          style: TextStyle(
            fontSize: 18.sp,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_horiz, color: AppColors.black), 15.wi],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            30.he,
            Padding(
              padding: EdgeInsets.only(left: 36.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AppImages.me),
                  ),
                  24.wi,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aldavideo Ronaldo',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        'UI Designer And Developer',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      Text(
                        'Aldavidoron.com',
                        style: TextStyle(
                          color: AppColors.black2,
                          letterSpacing: 0,
                        ),
                      ),
                      16.he,
                    ],
                  ),
                  30.wi,
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ),
                      );
                    },

                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF7B60F6), Color(0xFF4AA9F8)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Edit',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    storyImages.length,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(storyImages[index]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            16.he,

            Container(
              width: 345,
              height: 95,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatColumn("113", "Images"),
                  _buildStatColumn("5.3 M", "Followers"),
                  _buildStatColumn("25", "Following"),
                ],
              ),
            ),
            30.he,

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildImageContainer(AppImages.personal),
                  Column(
                    children: [
                      Expanded(
                        child: _buildImageContainer(AppImages.personal2),
                      ),
                      5.he,

                      Expanded(child: _buildImageContainer(AppImages.imagee3)),
                    ],
                  ),
                ],
              ),
            ),
            10.he,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _buildImageContainer(AppImages.imagee3)),
                      5.he,
                      Expanded(child: _buildImageContainer(AppImages.imagee1)),
                    ],
                  ),
                  _buildImageContainer(AppImages.imagee2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String value, String text) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(text, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildImageContainer(String image) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
      ),
    );
  }
}
