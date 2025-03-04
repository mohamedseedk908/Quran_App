import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/custom_text_stayls.dart';
import 'package:quran_app/features/sgnin/presentation/widgets/custom_text_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 96.h),
            Text(AppStrings.nameApp, style: CustomTextStyles.poppinsBold24),
            SizedBox(height: 6.h),
            Text(AppStrings.asalamuAlaikum,
                style: CustomTextStyles.poppinsBold17),
            SizedBox(height: 43.h),
            CustomTextForm(),
          ],
        ),
      ),
    );
  }
}
