import 'package:Eduflix/src/core/style/colors.dart';
import 'package:Eduflix/src/core/style/text_style.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/article_category_widgets.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/article_search_widgets.dart';
import 'package:Eduflix/src/feature/learing/view/widgets/learning_search_widgets.dart';
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
                borderSide: BorderSide(width: 1, color: Colors.white),
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
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 41,
                        crossAxisSpacing: 25,
                      ),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 104.h,
                              width: 200.w,
                              child: const DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 74.3.h,
                              width: 200.w,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color: AppColors.c1A1C1E,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Principles of Business",
                                          style: const AppTextStyle().titleMedium,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Andrew Tate", style: AppTextStyle().titleLarge),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 10.h),
                  const LearningSearchWidgets(),
                ],
              ),
            ],
          )),
    );
  }
}
