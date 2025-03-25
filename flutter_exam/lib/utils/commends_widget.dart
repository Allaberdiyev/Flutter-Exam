import 'package:flutter/material.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentItem extends StatelessWidget {
  final String name;
  final String profileImage;
  final String comment;
  final String timeAgo;
  final int? replies;

  CommentItem({
    required this.name,
    required this.profileImage,
    required this.comment,
    required this.timeAgo,
    required this.replies,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profileImage),
                radius: 20.r,
              ),
              13.wi,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        Icon(
                          Icons.check_circle,
                          color: AppColors.blue1,
                          size: 16,
                        ),
                      ],
                    ),
                    8.he,
                    Text(comment, style: TextStyle(color: AppColors.black)),
                    28.he,
                    Row(
                      children: [
                        ...[
                          Image.asset(AppImages.reply, width: 19),
                          10.wi,
                          Text(
                            "$replies replies",
                            style: TextStyle(color: AppColors.black3),
                          ),
                          10.wi,
                        ],
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: AppColors.black,
                        ),
                        4.he,
                        Text(
                          timeAgo,
                          style: TextStyle(color: AppColors.black3),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        12.he,
        Divider(),
        15.he,
      ],
    );
  }
}
