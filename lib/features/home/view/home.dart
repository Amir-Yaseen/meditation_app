import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditation_app/constants/sizeconfig.dart';
import 'package:meditation_app/features/home/bloc/home_bloc.dart';
import 'package:meditation_app/features/home/view/widgets/custim_tile.dart';
import 'package:meditation_app/features/home/view/widgets/custom_textfield.dart';
import 'package:meditation_app/helper/style/colors.dart';

import 'widgets/custom_big_card.dart';
import 'widgets/custom_modelbottomsheet.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current)=> current is !HomeActionState,
      listener: (context, state) {
        if(state is BotttomModelSheetPopupState){
          print('entered');
        customModelBottomSheet(context,homeBloc);
       }
      },
      builder:(context, state) {
        return Scaffold(
        body: SizedBox(
          height: 900,
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset('assets/images/forestbg.png'),
              Container(
          padding: const EdgeInsets.all(5.0),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black.withAlpha(0),
                const Color.fromARGB(255, 0, 0, 0),
                const Color.fromARGB(255, 0, 0, 0)
              ],
            ),
          ),),
          
           Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                const CustomTextField(),
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best Meditations',
                    style: TextStyle(color: Palette.white,fontSize: 22,fontWeight: FontWeight.bold),
                    ),
                     Text(' View All',
                    style: TextStyle(color: Palette.seaserpent,fontSize: 14,),
                    ),
          
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
               CustomBigCard(homeBloc: homeBloc,),
                SizedBox(
                  height: getProportionateScreenHeight(320),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        CustomListTile(
                          homeBloc: homeBloc,
                    image: 'assets/images/tile_img1.png',
                    title: 'Mitigation',
                    subTitle: 'Meditaion left 4/10',
                  ),
                  CustomListTile(
                    homeBloc: homeBloc,
                    image: 'assets/images/tile_img2.png',
                    title: 'Relaxation',
                    subTitle: 'Meditaion left 5/10',
                  ),
                  CustomListTile(
                    homeBloc: homeBloc,
                    image: 'assets/images/tile_img3.png',
                    title: 'Jummpation',
                    subTitle: 'Meditaion left 4/10',
                  ),
                  // CustomListTile(
                  //   image: 'assets/images/tile_img6.png',
                  //   title: 'Soothing',
                  //   subTitle: 'Meditaion left 9/10',
                  // ),
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          )
            ]
          ),
        ),
      );
      },
  
    );
  }
}





