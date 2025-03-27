import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/post_screen.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_exam/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget people(String image, String text) {
  return Column(
    children: [
      16.wi,
      Container(
        width: 58.w,
        height: 58.h,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [AppColors.blue2, AppColors.blue3]),
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.all(4),
          child: Image.asset(image, fit: BoxFit.fill),
        ),
      ),
      13.he,

      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          letterSpacing: 0,
          color: AppColors.black2,
        ),
      ),
    ],
  );
}

// ?
enum InfoType { text, image }

Widget infoContainer(
  BuildContext ctx,
  String image,
  String name,
  String job,
  InfoType infoType,
  String content,
  String likes,
  String comments,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.h),
    child: TextButton(
      onPressed: () {
        Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => PostScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.w),

        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black3.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 20,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(image, width: 45),
                10.wi,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        color: AppColors.black2,
                      ),
                    ),
                    Text(
                      job,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        color: AppColors.grey3,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      width: 6.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: AppColors.grey2,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    2.he,
                    Container(
                      width: 6.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: AppColors.grey2,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            12.he,
            infoType == InfoType.text
                ? Text(
                  content,

                  style: TextStyle(
                    fontSize: 14.5.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0,
                    color: AppColors.black3,
                  ),
                )
                : ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(content, fit: BoxFit.cover),
                ),

            Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Image.asset(AppImages.like, width: 20.w),
                  9.wi,
                  Text(
                    likes,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: AppColors.black,
                    ),
                  ),
                  23.wi,
                  Image.asset(AppImages.comment, width: 20.w),
                  9.wi,
                  Text(
                    comments,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: AppColors.black,
                    ),
                  ),
                  20.wi,

                  Image.asset(AppImages.send, width: 16.w),
                  Spacer(),
                  Image.asset(AppImages.save, width: 13.w),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
