import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_real_estate/screens/landing_screens.dart';
import 'package:ui_real_estate/utils/constants.dart';

void main(){
  runApp(const UiRealEstate());
}


  class UiRealEstate extends StatelessWidget {
  const UiRealEstate({Key? key}) : super(key: key);

  @override
  Widget build( BuildContext context) {
    double screenWidth= window.physicalSize.width; //get screen width 
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Build Learning',
      theme: ThemeData(
        primaryColor: colorWhite, 
        colorScheme: ColorScheme.fromSwatch(primaryColorDark: colorDarkBlue),
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,//agar chota screen width to chota text or else bada text.
        fontFamily: 'Caviar Dreams'
      ),
      home: const LandingScreen(),

    );
  }
}