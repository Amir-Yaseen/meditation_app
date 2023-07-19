import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../constants/sizeconfig.dart';
import '../../../../helper/style/colors.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Palette.white.withOpacity(0.3),
              border: Border.all(width: 1,color: Color.fromARGB(255, 177, 177, 177))
            ),
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenHeight(350),
            child: const TextField(
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(color: Palette.white),
              cursorColor: Palette.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search,color:Palette.white,),
                suffixIcon: Icon(Icons.mic_none_outlined,color: Palette.white,)
              ),
            ),
          ),
        ),
      ),
    );
  }
}