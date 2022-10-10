import 'package:flutter/material.dart';
import 'package:ui_real_estate/custom/border_box.dart';
import 'package:ui_real_estate/custom/options_button.dart';
import 'package:ui_real_estate/screens/detail_page.dart';
import 'package:ui_real_estate/utils/constants.dart';
import 'package:ui_real_estate/utils/sample_data.dart';
import 'package:ui_real_estate/utils/widget_function.dart';

import '../utils/custom_functions.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    const double padding= 25;
    final ThemeData themeData= Theme.of(context);
    const sidePadding= EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(  
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding ,
                    child: Row( //as there is 2 widgets icon on left and right side...
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: const [
                        BoarderBox(                    
                          width: 50,
                          height: 50,
                          child: Icon(Icons.menu, color: colorBlack)
                        ),
                        BoarderBox(                    
                          width: 50,
                          height: 50,
                          child: Icon(Icons.settings, color: colorBlack)
                        )                    
                      ],
                    ),
                  ),
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Text("Town", style:themeData.textTheme.bodyText2),
                  ),

                  addVerticalSpace(10),
                  Padding(
                    padding: sidePadding,
                    child: Text("Ranchi", style:themeData.textTheme.headline1),
                  ),

                  const Padding(
                    padding: sidePadding,
                    child: Divider(height: padding, color: colorGrey),
                  ),

                  addVerticalSpace(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row( //sending these values 1 by 1(as converted to map) to ChoiceOptions fun. and displaying in the format written in that function.
                      children: ["Rs2,20,000","For Sale", "3-4 Beds", ">1000 sqft"]
                        .map((sendToChoiceOption) =>ChoiceOptions(text: sendToChoiceOption)).toList(),
                    ),
                  ),

                  addVerticalSpace(10),
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: re_data.length,
                        itemBuilder: (context, index){
                          return RealEstateItem(itemdata: re_data[index]);
                        }
                        
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 50,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    icon: Icons.map_rounded,
                    text: 'Map View',
                    width: size.width*0.36,
                  ),
                )
              )
            ],
          )
        ) , 
      ),
    );
  }
}

class ChoiceOptions extends StatelessWidget {
  const ChoiceOptions({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData= Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: colorGrey.withAlpha(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 25),
      child: Text(text, style: themeData.textTheme.headline5),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({Key? key, required this.itemdata}) : super(key: key);
  
  final dynamic itemdata;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData= Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DetailPage(itemData: itemdata)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(itemdata["images"])), //adding image
                const Positioned( //adding heart
                  top: 15,
                  right: 15,
                  child: BoarderBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.favorite_border, color: colorBlack
                    )
                  )
                )
              ],
            ),
            addVerticalSpace(15),
            Row(
              children: [
                Text(formatCurrency(itemdata["amount"]), style: themeData.textTheme.headline1),
                addHorizontalSpace(10),
                Text(
                  itemdata["address"],
                  style: themeData.textTheme.bodyText2,
                )
              ],
            ),
            addVerticalSpace(10),
            Text(
              "${itemdata["bedroom"]} bedrooms  / ${itemdata["bathrooms"]} bathrooms / ${itemdata["area"]} sqft ",
              style: themeData.textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}