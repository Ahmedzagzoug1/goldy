import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/gold/data/models/gold_model.dart';

class GoldRepo{
  Future<Either<String, GoldModel>>getGold()async{
try{

  final response=await DioHelper.getData(endPoint: ApiConstants.goldEndPoint);
return Right(GoldModel.fromJson(response.data));
}catch(e){
  debugPrint(e.toString());

  return Left(e.toString());

}
  }
}