
import '../../data/models/silver_model.dart';

abstract class SilverState{}
 class SilverInitialState extends SilverState{}
 class SilverLoadingState extends SilverState{}
 class SilverSuccessState extends SilverState{
  SilverModel silverModel;
  SilverSuccessState(this.silverModel);
 }
 class SilverErrorState extends SilverState{
  String error;
  SilverErrorState(this.error);
 }
