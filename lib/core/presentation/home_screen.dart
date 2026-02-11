import 'package:flutter/material.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_strings.dart';
import 'package:goldy/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            color: AppColors.primaryColor,
            text: AppStrings.gold,
            onPressed: () {},
          ),
          CustomButton(
            color: AppColors.secondaryColor,
            text: AppStrings.silver,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
