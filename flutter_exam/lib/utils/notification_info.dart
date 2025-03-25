import 'package:flutter/material.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatefulWidget {
  final String name;
  final String message;
  final String time;
  final String imagePath;

  const NotificationItem({
    Key? key,
    required this.name,
    required this.message,
    required this.time,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.he,

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 24.r,
              backgroundImage: AssetImage(widget.imagePath),
            ),
            12.wi,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: widget.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        fontSize: 14.sp,
                      ),
                      children: [
                        TextSpan(
                          text: " ${widget.message}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.time,
                    style: TextStyle(
                      letterSpacing: 0,
                      color: AppColors.grey4,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        10.he,
      ],
    );
  }
}
