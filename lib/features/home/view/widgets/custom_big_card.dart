import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/features/home/bloc/home_bloc.dart';

import '../../../../constants/sizeconfig.dart';
import '../../../../helper/style/colors.dart';
import 'custom_modelbottomsheet.dart';
class CustomBigCard extends StatelessWidget {
  final HomeBloc homeBloc;
  const CustomBigCard({
    super.key, required this.homeBloc,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
      Image.asset('assets/images/bigcard.png'),
     
      ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Palette.white.withOpacity(0.3),
              // border: Border.all(width: 1,color: Color.fromARGB(255, 177, 177, 177))
            ),
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(350),
            child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Deep Down',style: TextStyle(color: Palette.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      Text('Meditation Left 4/10',style: TextStyle(color: Palette.white,fontSize: 12,),)
                    ],
                  ),
                  IconButton(onPressed: (){
                     customModelBottomSheet(context,homeBloc);
                  },icon: SvgPicture.asset('assets/icons/Vector5.svg')),
                ],
              ),
            ),
          ),
        ),
      ),
      ]));
  }
}