import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/features/gold/presentation/cubit/gold_states.dart';

import '../../data/repo/gold_repo.dart';

class GoldCubit extends Cubit<GoldStates>{
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitialState());
  getGold()async{
    print('cubit');
    emit(GoldLoadingState());
   final goldData=await goldRepo.getGold();
   goldData.fold((error)=>emit(GoldErrorState(error)),
       (goldModel)=>emit(GoldSuccessState(goldModel)));
  }
}