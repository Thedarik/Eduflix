import 'package:Eduflix/src/core/style/colors.dart';
import 'package:Eduflix/src/core/style/images.dart';
import 'package:Eduflix/src/core/style/text_style.dart';
import 'package:Eduflix/src/feature/learing/view/pages/learing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            SizedBox(height: 57.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 54.h),
              child: AppImages.onBoardingLogo,
            ),
            Text(
              "Welcome to Eduflix!",
              style: const AppTextStyle().bodySmall,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 52.h,
              width: double.maxFinite.w,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.c00C2CB,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LearingPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImages.OnboardingIcon,
                      SizedBox(width: 8.w),
                      Text(
                        "Maktablar",
                        style: const AppTextStyle().bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h),
            SizedBox(
              height: 52.h,
              width: double.maxFinite.w,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.c00C2CB,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImages.OnboardingIcon,
                      SizedBox(width: 8.w),
                      Text(
                        "Sulaymon",
                        style: const AppTextStyle().bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
