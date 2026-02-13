import 'package:flutter/material.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_strings.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/core/widgets/custom_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(text: AppStrings.gold, color: AppColors.goldColor,
            onPressed: (){
            Navigator.pushNamed(context, AppRoutes.goldScreen );
            },
          ),
          SizedBox(height: 15,),
          CustomButton(text: AppStrings.sliver, color: AppColors.silverColor,
            onPressed: (){
              Navigator.pushNamed(context, AppRoutes.sliverScreen );
            },
          ),
        ],
      ),
    );
  }
}

