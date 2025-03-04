import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/custom_text_stayls.dart';
import 'package:quran_app/core/widgets/app_text_button.dart';

class BodyStartingScreen extends StatelessWidget {
  const BodyStartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 75.h),
            Text(
              textAlign: TextAlign.center,
              AppStrings.nameApp,
              style: CustomTextStyles.poppinsBold24,
            ),
            SizedBox(height: 6.h),
            Text(
              textAlign: TextAlign.center,
              AppStrings.supTitleInSplashScreen,
              style: CustomTextStyles.poppinsBold13,
            ),
            SizedBox(height: 41.h),
            Stack(
              clipBehavior: Clip.none, // السماح للعناصر بالخروج من حدود Stack
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.deepViolet),
                  width: 296.w,
                  height: 437.h,
                  child: Image.asset(AppAssets.mosque),
                ),
                Positioned(
                  bottom: -20,
                  child: CustomButton(
                    onPressed: () {
                      GoRouter.of(context).push("/signIn");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
