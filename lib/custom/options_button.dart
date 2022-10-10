import 'package:flutter/material.dart';
import 'package:ui_real_estate/utils/widget_function.dart';

import '../utils/constants.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({Key? key, required this.text, required this.icon, required this.width}) : super(key: key);

  final String text;
  final IconData icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 5, 18, 71), 
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
        ),
        onPressed: (){
          const Text('Map view Coming in next update');
        },
        child:Row(
          children: [
            Icon(icon, color: colorWhite),
            addHorizontalSpace(10),
            Text(text,style:const TextStyle(color: colorWhite)),
          ],
        )
      ),
    );
  }
}