import 'package:flutter/material.dart';
import 'package:ui_real_estate/utils/constants.dart';

class BoarderBox extends StatelessWidget {
  const BoarderBox({Key? key, required this.child, this.padding,  this.width, this.height}) : super(key: key);

  final Widget child;
  final EdgeInsets? padding;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: colorGrey.withAlpha(40), width: 2),
      ),
      padding: padding,
      child: Center(child: child),
    );
  }
}