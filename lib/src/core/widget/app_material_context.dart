import 'package:Eduflix/src/core/routes/app_route_name.dart';
import 'package:Eduflix/src/core/routes/app_router.dart';
import 'package:flutter/material.dart';

class AppMaterialContext extends StatelessWidget {
  const AppMaterialContext({super.key});

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Audio Book',
          darkTheme: ThemeData.dark(),
          initialRoute: AppRouteName.learingPage,
          onGenerateRoute: AppRouter().onGenerateRoute,
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
            child: ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: child ?? const Scaffold(),
            ),
          ),
        ),
      );
}
