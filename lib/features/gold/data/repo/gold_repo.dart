// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/gold/data/models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> GoldData() async {
    try {
      final res = await DioHelper.getData(url: ApiConstants.baseUrl);
      return right(GoldModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
