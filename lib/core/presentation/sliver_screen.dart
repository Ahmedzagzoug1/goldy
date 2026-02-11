import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,

      appBar: AppBar(

        title: Text(AppStrings.sliverTitle,
          style: TextStyle(color: AppColors.sliverColor),),
        backgroundColor: AppColors.black,

        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppStrings.sliverPrice, style: TextStyle(color: AppColors.sliverColor))
        ],
      ),
    );
  }
}
