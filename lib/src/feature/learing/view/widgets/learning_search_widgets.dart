import 'package:Eduflix/src/core/style/colors.dart';
import 'package:Eduflix/src/core/style/text_style.dart';
import 'package:flutter/cupertino.dart';

class LearningSearchWidgets extends StatelessWidget {
  const LearningSearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 21),
        child: SizedBox(
          child: CupertinoTextField(
            style: const AppTextStyle().labelLarge,
            placeholder: "Cari Kursus",
            placeholderStyle: const AppTextStyle().labelLarge!.copyWith(
                  color: AppColors.cE0E0E0.withOpacity(0.4),
                ),
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.c1D1D1D,
            ),
            suffix: const Padding(
              padding: EdgeInsets.only(right: 21),
              child: Icon(
                CupertinoIcons.search,
                size: 20,
                color: AppColors.cE0E0E0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
