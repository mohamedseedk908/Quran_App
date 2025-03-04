import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/custom_text_stayls.dart';
import 'package:quran_app/features/innerpage/presentation/widgets/custom_app_bar.dart';
import 'package:quran_app/features/innerpage/presentation/widgets/custom_container.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppBar()),
            SliverToBoxAdapter(
              child: Text(AppStrings.asalamuAlaikum,
                  style: CustomTextStyles.poppinsBold17),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 29.h)),
            SliverToBoxAdapter(child: CustomContainer()),
            SliverToBoxAdapter(child: CustomBody()),
          ],
        ),
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 402.h,
      width: 341.w,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.mosque,
            ),
            fit: BoxFit.scaleDown),
      ),
    );
  }
}
