import 'package:flutter/material.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> storyImages = [
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
          'Aldavideo.Ronaldo',
          style: TextStyle(
            fontSize: 16,
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
                    backgroundImage: AssetImage(AppImages.tayper),
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
              height: 85,
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
                  _buildStatColumn("1.3 M", "Followers"),
                  _buildStatColumn("987", "Following"),
                ],
              ),
            ),
            20.he,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 270,
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey,
                        blurRadius: 10,
                        spreadRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [AppColors.blue2, AppColors.blue3],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "FOLLOWING",
                      style: TextStyle(
                        letterSpacing: 1.47,
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                10.wi,
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey,
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [AppColors.blue2, AppColors.blue3],
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.message, color: AppColors.white),
                ),
              ],
            ),

            37.he,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildImageContainer(AppImages.imagee1),
                  Column(
                    children: [
                      Expanded(child: _buildImageContainer(AppImages.imagee2)),
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
                childAspectRatio: 0.5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _buildImageContainer(AppImages.imagee3)),
                      SizedBox(height: 4),
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

  Widget _buildStatColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
