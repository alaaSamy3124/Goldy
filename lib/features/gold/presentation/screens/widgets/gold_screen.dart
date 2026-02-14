import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_images.dart';
import 'package:goldy/features/gold/data/repo/gold_repo.dart';
import 'package:goldy/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:goldy/features/gold/presentation/cubit/gold_states.dart';
import 'package:goldy/features/gold/presentation/screens/widgets/custom_text.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return GoldCubit(GoldRepo())..getGold();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            "Gold",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is GoldLoadignState) {
              return Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            } else if (state is GoldErrorState) {
              return Center(
                child: Text(
                  'Something went wrong',
                  style: TextStyle(color: Colors.white),
                ),
              );
            } else if (state is GoldSuccessState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.gold, width: 200, height: 250),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      CustomText(text: state.goldModel.price.toString()),
                      CustomText(text: " EGP"),
                    ],
                  ),
                ],
              );
            }
            return Center(child: Text("No Data"));
          },
        ),
      ),
    );
  }
}
