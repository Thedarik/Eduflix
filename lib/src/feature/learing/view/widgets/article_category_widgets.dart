import 'package:Eduflix/src/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleCategoryWidgets extends StatelessWidget {
   ArticleCategoryWidgets({super.key});
   List<String> categoreStringList = ["All", "IT Software", "Business", "Crypto", "Stocks", "Asadbe"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Scroll horizontally
        itemCount: categoreStringList.length, // Number of items in the ListView
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: 75.w,
              height: 25.h, // Width of each item
              child: DecoratedBox(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: AppColors.c717171, width: 1)),
                child: Center(
                  child: Text(
                    categoreStringList[index],
                    style: const TextStyle(
                      fontSize: 10,
                      color: AppColors.cE0E0E0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
