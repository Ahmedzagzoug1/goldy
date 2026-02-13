import 'package:flutter/material.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_strings.dart';
import 'package:goldy/features/gold/presentation/screens/widgets/custom_text.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_images.dart';
import '../../data/repo/gold_repo.dart';
import '../cubit/gold_cubit.dart';
import '../cubit/gold_states.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GoldCubit>(
      create: (context) =>
          GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        //color for screen
        backgroundColor: AppColors.black,
        appBar: AppBar(

          title: CustomText(
              text: AppStrings.goldTitle, color: AppColors.goldColor),
          //color for appbar
          backgroundColor: AppColors.black,

          centerTitle: true,
          automaticallyImplyLeading: false,
        ),


        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if(state is GoldLoadingState){
              return Center(child: CircularProgressIndicator(),);
            }else if(state is GoldErrorState){
              return Center(child: CustomText(text: state.error, color: AppColors.red),);
            }else if(state is GoldSuccessState){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.goldImage,width:200 ,height: 250,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: state.goldModel.price.toString(), color: AppColors.goldColor),
                    CustomText(text: ' USD', color: AppColors.goldColor)


                  ],
                )
              ],
            );}
            else{
              return Center(child: Text('something wrong'),);
            }
          },
        ),
      ),
    );
  }
}
