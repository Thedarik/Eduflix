import 'package:Eduflix/src/core/style/colors.dart';
import 'package:Eduflix/src/core/style/images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: AppImages.splashLogo,
      ),
    );
  }
}
