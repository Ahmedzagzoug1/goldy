import 'package:flutter/material.dart';
import 'package:goldy/core/constants/app_colors.dart';

class CustomButton  extends StatelessWidget {
  final String text;
  final Color color;
  void Function()? onPressed;
  
   CustomButton ({super.key, required this.text,this.onPressed, required this.color});




  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width/2,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(color),
              shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)))
            ),
            onPressed: onPressed, 
            child: Text(
              text,style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.black
            ),
              textAlign: TextAlign.center,

            )),
      ),
    );
  }
}
