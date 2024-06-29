import 'package:Eduflix/src/core/style/colors.dart';
import 'package:Eduflix/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFADF6F,
      body: Center(
        child: Text(
          "Assalomu alaykum",
          style: const AppTextStyle().profileDisplaySmall,
        ),
      ),
    );
  }
}
