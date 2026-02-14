import 'package:goldy/features/silver/data/models/silver_model.dart';

abstract class SilverState {}

class SilverInitialState extends SilverState {}

class SilverErrorState extends SilverState {
  final String errMsg;

  SilverErrorState({required this.errMsg});
}

class SilverSuccessState extends SilverState {
  final SilverModel silverModel;

  SilverSuccessState({required this.silverModel});
}

class SilverLoadignState extends SilverState {}
