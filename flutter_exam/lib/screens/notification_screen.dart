import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/commends_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_exam/utils/notification_info.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> notifications = [
    {
      "name": "Reny Lewis",
      "message": "Commented On Your Post",
      "time": "Just now",
      "image": AppImages.person1,
    },
    {
      "name": "Reny Lewis",
      "message": "Liked Your Post.",
      "time": "1 Hour ago",
      "image": AppImages.person2,
    },
    {
      "name": "Reny Lewis",
      "message": "Started Following You",
      "time": "3 Hours ago",
      "image": AppImages.person3,
    },
    {
      "name": "Reny Lewis",
      "message": "Tagged You In A Post",
      "time": "6 Hours ago",
      "image": AppImages.person4,
    },
    {
      "name": "Reny Lewis",
      "message": "Liked Your Post",
      "time": "8 Hours ago",
      "image": AppImages.person5,
    },
    {
      "name": "Reny Lewis",
      "message": "Commented On Your Post.",
      "time": "14 Hours ago",
      "image": AppImages.person6,
    },
    {
      "name": "Reny Lewis",
      "message": "Started Following You",
      "time": "Yesterday",
      "image": AppImages.person3,
    },
    {
      "name": "Reny Lewis",
      "message": "Commented On Your Post.",
      "time": "Yesterday",
      "image": AppImages.person1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Text(
          "Notification",
          style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => CommendsScreen()),
              );
            },
            icon: Icon(Icons.more_horiz, color: AppColors.black),
          ),
          15.wi,
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,

        separatorBuilder: (context, index) => Divider(),

        itemBuilder: (context, index) {
          return NotificationItem(
            name: notifications[index]["name"]!,
            message: notifications[index]["message"]!,
            time: notifications[index]["time"]!,
            imagePath: notifications[index]["image"]!,
          );
        },
      ),
    );
  }
}
