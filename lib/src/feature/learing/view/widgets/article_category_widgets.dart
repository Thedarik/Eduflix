import 'package:Eduflix/src/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ArticleCategoryWidgets extends StatelessWidget {
  ArticleCategoryWidgets({super.key});
  List<String> categoreStringList = ["All", "IT Software", "Business", "Crypto", "Stocks", "Asadbe"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoreStringList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: MaterialButton(
              onPressed: () {},
              minWidth: 75.w,
              height: 25.h,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(
                    width: 1,
                    color: AppColors.c717171,
                  )),
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
          );
        },
      ),
    );
  }
}
