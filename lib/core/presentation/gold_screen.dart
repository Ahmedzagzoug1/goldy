import 'package:flutter/material.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_strings.dart';
class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color for screen
      backgroundColor: AppColors.black,
      appBar: AppBar(

        title: Text(AppStrings.goldTitle,
        style: TextStyle(color: AppColors.goldColor),),
        //color for appbar
          backgroundColor: AppColors.black,

          centerTitle: true,
          automaticallyImplyLeading: false,
        ),



      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(AppStrings.goldPrice, style: TextStyle(color: AppColors.goldColor))
        ],
      ),
    );
  }
}
