import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on num {
  SizedBox get he => SizedBox(height: this.h);

  SizedBox get wi => SizedBox(width: this.w);
}
