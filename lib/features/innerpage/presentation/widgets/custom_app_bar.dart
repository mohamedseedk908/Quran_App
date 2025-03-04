import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/custom_text_stayls.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 108.h),
        Image.asset(AppAssets.vector),
        Text(
          AppStrings.nameApp,
          style: CustomTextStyles.poppinsBold24,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.pinkish),
          height: 27.h,
          width: 110.w,
          child: Icon(Icons.search),
        ),
      ],
    );
  }
}
