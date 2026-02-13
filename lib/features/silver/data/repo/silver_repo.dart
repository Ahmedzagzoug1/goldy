import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/silver/data/models/silver_model.dart';

class SilverRepo{
  Future<Either<String, SilverModel>>getSilver()async{
try{

  final response=await DioHelper.getData(endPoint: ApiConstants.silverEndPoint);
return Right(SilverModel.fromJson(response.data));
}catch(e){
debugPrint(e.toString());
  return Left(e.toString());

}
  }
}