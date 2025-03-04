import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/custom_text_stayls.dart';
import 'package:quran_app/features/starting_page/presentation/widgets/app_text_button.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 113),
            Text(
              textAlign: TextAlign.center,
              AppStrings.nameApp,
              style: CustomTextStyles.poppinsBold24,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              textAlign: TextAlign.center,
              AppStrings.supTitleInSplashScreen,
              style: CustomTextStyles.poppinsBold13,
            ),
            SizedBox(
              height: 41,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColors.deepViolet),
              width: 296,
              height: 437,
              child: Image.asset(AppAssets.mosque),
            ),
            SizedBox(height: 45,),
            CustomButton(onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
