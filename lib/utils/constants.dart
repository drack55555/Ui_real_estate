import 'package:flutter/material.dart';


const colorBlack = Color.fromRGBO(48, 47, 48, 1.0);
const colorGrey = Color.fromARGB(255, 141, 141, 141);
const colorWhite = Colors.white;
const colorDarkBlue= Color.fromARGB(255, 14, 21, 50);

const TextTheme textThemeDefault = TextTheme(
  headline1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 26
  ),
  headline2: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22
  ),
  headline3: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20
  ),
  headline4: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 16
  ),
  headline5: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14
  ),
  headline6: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12
  ),
  bodyText1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w500, fontSize: 14, height: 1.5
  ),
  bodyText2: TextStyle(
    color: colorGrey, fontWeight: FontWeight.w500, fontSize: 14, height: 1.5
  ),
  subtitle1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w400, fontSize: 12
  ),
  subtitle2: TextStyle(
    color: colorGrey, fontWeight: FontWeight.w400, fontSize: 12
  ),
);

//same as above but small font size...
const TextTheme textThemeSmall = TextTheme( 
  headline1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22
  ),
  headline2: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20
  ),
  headline3: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 18
  ),
  headline4: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14
  ),
  headline5: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12
  ),
  headline6: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 10
  ),
  bodyText1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w500, fontSize: 122, height: 1.5
  ),
  bodyText2: TextStyle(
    color: colorGrey, fontWeight: FontWeight.w500, fontSize: 12, height: 1.5
  ),
  subtitle1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w400, fontSize: 10
  ),
  subtitle2: TextStyle(
    color: colorGrey, fontWeight: FontWeight.w400, fontSize: 10
  ),
);