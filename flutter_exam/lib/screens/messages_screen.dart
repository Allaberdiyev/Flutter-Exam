import 'package:flutter/material.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_exam/utils/bottomBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagesScreen extends StatefulWidget {
  MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],

        automaticallyImplyLeading: false,
        title: Text(
          "Message",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Image.asset(AppImages.write, width: 25.w),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find your friends?",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 15),
              25.he,
              Text(
                "Today",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              10.he,

              _buildMessageCard(
                "Reny Lewis",
                "Please confirm the friendship...",
                AppImages.image6,
                5,
              ),
              5.he,

              _buildMessageCard(
                "Jessica Jones",
                "I'm On Vacation Ron...",
                AppImages.image5,
                1,
              ),
              30.he,

              Text(
                "Yesterday",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              20.he,

              _buildMessageTile(
                "Alexander Walker",
                "I've Gone Through The Procedure ...",
                AppImages.image4,
              ),
              20.he,

              _buildMessageTile(
                "Realbung Khar",
                "How are you, friend? long time...",
                AppImages.image3,
              ),
              20.he,

              _buildMessageTile(
                "Anjelina Rumour",
                "I have a job as a foreman...",
                AppImages.image1,
              ),

              20.he,

              _buildMessageTile(
                "Terris Ronad",
                "Where are you going at night...",
                AppImages.image2,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Bottombar(),
    );
  }

  Widget _buildMessageCard(
    String name,
    String message,
    String avatar,
    int count,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage(avatar), radius: 25),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                3.he,
                Text(message, style: TextStyle(color: AppColors.black1)),
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 12,
            child: Text(
              count.toString(),
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageTile(String name, String message, String avatar) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(avatar), radius: 25),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
      ),
      subtitle: Text(
        message,
        style: TextStyle(color: AppColors.black1, fontSize: 14.sp),
      ),
    );
  }
}
