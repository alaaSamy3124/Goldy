// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/silver/data/models/silver_model.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> SilverData() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.silverEndpoint);
      return right(SilverModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
