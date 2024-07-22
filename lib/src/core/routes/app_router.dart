import 'package:Eduflix/src/feature/auth/view/pages/onboarding_page.dart';
import 'package:Eduflix/src/feature/splash/view/pages/saplesh_page.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';
import 'app_route_name.dart';

final class AppRouter<T extends Object?> {
  Route<T> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.splashPage:
        /// Route
        return MaterialPageRoute<T>(
          builder: (context) => const SplashPage(),
        );
      default:
        return _errorRoute();
    }
  }

  Route<T> _errorRoute() => MaterialPageRoute<T>(
        builder: (context) => Scaffold(
          body: Center(
            child: Text(
              'Error Route',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.black,
                  ),
            ),
          ),
        ),
      );
}
