import 'package:flutter/material.dart';
import 'package:goldy/core/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key , required this.text});
 final String text; 
  @override
  Widget build(BuildContext context) {
    return Text(
      text , style: TextStyle(
      color: AppColors.primaryColor , fontSize: 20 , fontWeight: FontWeight.bold
      ),
    );
  }
}
