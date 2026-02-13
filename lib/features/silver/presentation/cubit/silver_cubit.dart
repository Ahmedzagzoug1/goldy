import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_states.dart';

import '../../data/repo/silver_repo.dart';

class SilverCubit extends Cubit<SilverState>{
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitialState());
  getSilver()async{
    emit(SilverLoadingState());
   final silverData=await silverRepo.getSilver();
   silverData.fold((error)=>emit(SilverErrorState(error)),
       (silverModel)=>emit(SilverSuccessState(silverModel)));
  }
}