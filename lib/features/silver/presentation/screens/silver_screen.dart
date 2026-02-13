import 'package:flutter/material.dart';
import 'package:goldy/core/constants/app_images.dart';
import 'package:goldy/core/constants/app_strings.dart';
import 'package:goldy/features/gold/presentation/screens/widgets/custom_text.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../data/repo/silver_repo.dart';
import '../cubit/silver_cubit.dart';
import '../cubit/silver_states.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SilverCubit>(
      create: (context) =>
          SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        //color for screen
        backgroundColor: AppColors.black,
        appBar: AppBar(

          title: CustomText(
              text: AppStrings.silverTitle, color: AppColors.silverColor),
          //color for appbar
          backgroundColor: AppColors.black,

          centerTitle: true,
          automaticallyImplyLeading: false,
        ),


        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if(state is SilverLoadingState){
              return Center(child: CircularProgressIndicator(),);
            }else if(state is SilverErrorState){
              return Center(child: CustomText(text: state.error, color: AppColors.red),);
            }else if(state is SilverSuccessState){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.silverImage,width:200 ,height: 250,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: state.silverModel.price.toString(), color: AppColors.silverColor),
                    CustomText(text: ' USD', color: AppColors.silverColor)


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
