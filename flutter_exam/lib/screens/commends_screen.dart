import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/search_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_exam/utils/commends_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommendsScreen extends StatefulWidget {
  CommendsScreen({super.key});

  @override
  State<CommendsScreen> createState() => _CommendsScreenState();
}

class _CommendsScreenState extends State<CommendsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CommentsPage());
  }
}

class CommentsPage extends StatelessWidget {
  CommentsPage({super.key});

  final List<CommentItem> comments = [
    CommentItem(
      name: "Tom Haland",
      profileImage: AppImages.carolina,
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque interdum blandit ipsum sed scelerisque.",
      timeAgo: "5 min ago",
      replies: 4,
    ),
    CommentItem(
      name: "Caroline Tan",
      profileImage: AppImages.roy,
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque interdum blandit ipsum sed scelerisque.",
      timeAgo: "5 min ago",
      replies: 10,
    ),
    CommentItem(
      name: "Caroline Tan",
      profileImage: AppImages.roy,
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque interdum blandit ipsum sed scelerisque.",
      timeAgo: "5 min ago",
      replies: 20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,

          centerTitle: true,
          title: Text(
            "Comments",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0,
            ),
          ),
          leading: Icon(Icons.arrow_back),
          actions: [Icon(Icons.more_horiz), 10.wi],
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 10),
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24.r,
                      backgroundImage: AssetImage(AppImages.sanita),
                    ),
                    12.wi,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Sanita R.",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            4.wi,
                            Icon(
                              Icons.check_circle,
                              color: AppColors.blue1,
                              size: 18.sp,
                            ),
                          ],
                        ),
                        Text(
                          "2h Ago",
                          style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.more_horiz, size: 20),
                    ),
                  ],
                ),
                12.he,
                Text(
                  "Hello Everyone, How are you today? Hope you all fine and blessed everyday 😉",
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                Divider(),
                ...comments.map(
                  (comment) => CommentItem(
                    name: comment.name,
                    profileImage: comment.profileImage,
                    comment: comment.comment,
                    timeAgo: comment.timeAgo,
                    replies: comment.replies,
                  ),
                ),
                80.he,
              ],
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
                        color: Colors.black12,
                        blurRadius: 10,
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
                            onPressed: () {},
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
