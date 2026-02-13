import 'package:goldy/features/gold/data/models/gold_model.dart';

abstract class GoldStates{}
 class GoldInitialState extends GoldStates{}
 class GoldLoadingState extends GoldStates{}
 class GoldSuccessState extends GoldStates{
  GoldModel goldModel;
  GoldSuccessState(this.goldModel);
 }
 class GoldErrorState extends GoldStates{
  String error;
  GoldErrorState(this.error);
 }
