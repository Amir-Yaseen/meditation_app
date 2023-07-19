import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../helper/style/colors.dart';
import '../../bloc/home_bloc.dart';
class CustomListTile extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final HomeBloc homeBloc;
  const CustomListTile({
    required this.image,
    required this.title,
    required this.subTitle,
    super.key, required this.homeBloc,
  });

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: (){
        homeBloc.add(BotttomModelSheetPopupEvent());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10
        ),
        child: ListTile(
          leading: Image.asset(image),
          title: Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Palette.white),),
          subtitle: Text(subTitle,style: const TextStyle(fontSize: 14,color: Palette.white)),
          trailing: SvgPicture.asset('assets/icons/Vector5.svg'),
        ),
      ),
    );
  }
}

