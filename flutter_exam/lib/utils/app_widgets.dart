import 'package:flutter/material.dart';
import 'package:flutter_exam/utils/app_colors.dart';
import 'package:flutter_exam/utils/app_extations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget google_facebook(String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      55.he,
      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: AppColors.black2,
          fontSize: 40.sp,
        ),
      ),
      40.he,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.red,
              minimumSize: Size(146.w, 51.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
            onPressed: () {},
            child: Text(
              'GOOGLE',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: AppColors.white,
                letterSpacing: 2,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.blueButtonColor,
              minimumSize: Size(146.w, 51.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
            onPressed: () {},
            child: Text(
              'FACEBOOK',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: AppColors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
      20.he,
      Center(
        child: Text(
          'OR',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
            fontSize: 16.sp,
            letterSpacing: 4,
          ),
        ),
      ),
    ],
  );
}

Widget button(VoidCallback push, String text) {
  return TextButton(
    style: TextButton.styleFrom(
      minimumSize: Size(344.w, 57.h),
      backgroundColor: AppColors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    onPressed: push,
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: AppColors.white,
        letterSpacing: 0,
      ),
    ),
  );
}
