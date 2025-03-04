import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/widgets/app_text_button.dart';
import 'package:quran_app/features/sgnin/presentation/widgets/app_text_form_field.dart';
import 'package:quran_app/features/sgnin/presentation/widgets/sign_in_icon.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/custom_text_stayls.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Text(AppStrings.signIn, style: CustomTextStyles.poppinsBold17),
          SizedBox(height: 22.h),
          AppTextFormField(hintText: 'email'),
          SizedBox(height: 31.h),
          AppTextFormField(hintText: 'password'),
          SizedBox(height: 44.h),
          CustomButton(
            text: AppStrings.signIn,
            color: AppColors.pinkish,
            onPressed: () {GoRouter.of(context).push("/innerPage");},
          ),
          SizedBox(height: 36.h),
          Text(
            "or",
            style: CustomTextStyles.poppinsBold13,
          ),
          SizedBox(height: 10.h),
          SignInIcon(),
        ],
      ),
    );
  }
}
