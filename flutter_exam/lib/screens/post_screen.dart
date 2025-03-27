import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/search_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostScreen extends StatefulWidget {
  PostScreen({super.key});
  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: CircleAvatar(
          radius: 29,

          backgroundImage: AssetImage(AppImages.tayper),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz, color: AppColors.black),
            onPressed: () {},
          ),
          10.wi,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            30.he,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(AppImages.city2, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Image.asset(AppImages.like, width: 20),
                  SizedBox(width: 5),
                  Text(
                    "325",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  Image.asset(AppImages.comment, width: 20),
                  SizedBox(width: 5),
                  Text(
                    "98",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.bookmark_border, color: AppColors.blue2),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            UserLikeItem(
              name: "Julian Krämer",
              image: AppImages.girl,
              isLiked: true,
            ),

            10.he,
            UserLikeItem(
              name: "Celina Graf",
              image: AppImages.girl2,
              isLiked: false,
            ),
            10.he,

            UserLikeItem(
              name: "Celina Graf",
              image: AppImages.girl2,
              isLiked: false,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black2,
                        blurRadius: 20,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type comment...",
                      hintStyle: TextStyle(color: AppColors.black1),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage(AppImages.tayper),
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: IconButton(
                            icon: Image.asset(AppImages.push, width: 20),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => SearchScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserLikeItem extends StatelessWidget {
  final String name;
  final String image;
  final bool isLiked;

  UserLikeItem({
    super.key,
    required this.name,
    required this.image,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(image)),
      title: Text(name, style: TextStyle(fontSize: 12.sp)),
      trailing: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? Colors.red : AppColors.black,
      ),
    );
  }
}
