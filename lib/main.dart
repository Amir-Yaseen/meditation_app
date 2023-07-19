import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/sizeconfig.dart';
import 'features/home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(
          Theme.of(context).textTheme
        )
      ),
      home: Home(),
    );
  }
}