import 'package:Eduflix/src/core/style/colors.dart';
import 'package:Eduflix/src/core/style/text_style.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/article_category_widgets.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/article_search_widgets.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/learning_category_widgets.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/learning_search_widgets.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/listview_bulder_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LearingPage extends StatelessWidget {
  const LearingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "Learning",
              style: const AppTextStyle().bodyMedium!.copyWith(
                    color: AppColors.white,
                  ),

            ),
            bottom: TabBar(
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 1, color: Colors.white,),
                insets: EdgeInsets.symmetric(horizontal: 16.0),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelStyle: const AppTextStyle().labelMedium,
              unselectedLabelStyle: const AppTextStyle().labelMedium,
              tabs: const [
                Tab(text: "Article"),
                Tab(text: "Learning"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  SizedBox(height: 10.h),
                  const ArticleSearchWidgets(),
                  SizedBox(height: 16.h),
                  ArticleCategoryWidgets(),
                  SizedBox(height: 16.h),
                  const ListviewBulderWidgets(),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 10.h),
                  const LearningSearchWidgets(),
                  SizedBox(height: 16.h),
                  LearningCategoryWidgets(),
                  SizedBox(height: 16.h),
                  const ListviewBulderWidgets(),
                ],
              ),
            ],
          )),
    );
  }
}
