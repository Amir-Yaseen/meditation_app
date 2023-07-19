import 'package:flutter/material.dart';
import 'package:meditation_app/features/home/bloc/home_bloc.dart';

import '../../../../constants/sizeconfig.dart';
import '../../../../helper/style/colors.dart';
import 'custim_tile.dart';
Future customModelBottomSheet(BuildContext context,HomeBloc homebloc){
  return showModalBottomSheet(context: context,
  shape: const RoundedRectangleBorder( // <-- SEE HERE
          borderRadius: BorderRadius.vertical( 
            top: Radius.circular(20.0),
          ),
        ),
  builder: (BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        color: Palette.grey,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      ),
      child:  SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Center(
                child: Container(
                  height: getProportionateScreenHeight(3),
                  width: getProportionateScreenWidth(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Palette.lightgrey
                  ),
                  // color: Palette.white,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              const Text('Stress Day Relaxation',style: TextStyle(fontSize: 25,color: Palette.white,fontWeight: FontWeight.bold),),
              const Text('3 Tracks',style: TextStyle(color:Palette.white),),
              SizedBox(
                height: getProportionateScreenHeight(340),
                child: SingleChildScrollView(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      CustomListTile(
                        homeBloc: homebloc,
                      image: 'assets/images/tile_img4.png',
                      title: 'Breathing Excercide',
                      subTitle: '14 min',
                    ),
                    CustomListTile(
                      homeBloc: homebloc,
                      image: 'assets/images/tile_img5.png',
                      title: 'Pranayama',
                      subTitle: '20 min',
                    ),
                    CustomListTile(
                      homeBloc: homebloc,
                      image: 'assets/images/tile_img6.png',
                      title: 'Soothing',
                      subTitle: '15 min',
                    ),
                    // CustomListTile(
                    //   image: 'assets/images/tile_img4.png',
                    //   title: 'Breathing Excercide',
                    //   subTitle: '14 min',
                    // ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 400,)
            ],
          ),
        ),
      )
    );
  });
}