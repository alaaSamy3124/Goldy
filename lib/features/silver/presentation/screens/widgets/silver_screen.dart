import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_images.dart';
import 'package:goldy/features/gold/presentation/screens/widgets/custom_text.dart';
import 'package:goldy/features/silver/data/repo/silver_repo.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_states.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SilverCubit(SilverRepo())..getSilver();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            "Silver",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if (state is SilverLoadignState) {
              return Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            } else if (state is SilverErrorState) {
              return Center(
                child: Text(
                  'Something went wrong',
                  style: TextStyle(color: Colors.white),
                ),
              );
            } else if (state is SilverSuccessState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.silver, width: 200, height: 250),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      CustomText(text: state.silverModel.price.toString()),
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
