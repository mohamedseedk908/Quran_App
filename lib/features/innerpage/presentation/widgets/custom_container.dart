import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.h,
      width: 296.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColors.pinkish),
    );
  }
}