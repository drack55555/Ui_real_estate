
import 'package:flutter/material.dart';
import 'package:ui_real_estate/custom/border_box.dart';
import 'package:ui_real_estate/custom/options_button.dart';
import 'package:ui_real_estate/utils/constants.dart';
import 'package:ui_real_estate/utils/custom_functions.dart';
import 'package:ui_real_estate/utils/widget_function.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.itemData}) : super(key: key);

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {

    final Size size= MediaQuery.of(context).size;
    final ThemeData themeData= Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorWhite,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(itemData["images"]),
                        Positioned(
                          width: size.width,
                          top: padding,
                          child: Padding(
                            padding: sidePadding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                InkWell( //details page image ka khul gya then us ka BACK BUTTON. to return to home page
                                  onTap: () => Navigator.pop(context),
                                  child: const BoarderBox(
                                    height: 50,
                                    width: 50,
                                    child: Icon(Icons.keyboard_backspace,color: colorBlack,),
                                  ),
                                ),
                                const BoarderBox(
                                  height: 50,
                                  width: 50,
                                  child: Icon(Icons.favorite_border,color: colorBlack,),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(formatCurrency(itemData["amount"]), style: themeData.textTheme.headline1,),
                              addVerticalSpace(5),
                              Text(itemData["address"], style: themeData.textTheme.subtitle2,),
                            ],
                          ),
                          BoarderBox(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            child: Text("20 Hourse ago", style: themeData.textTheme.headline5,),
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text("House Information", style: themeData.textTheme.headline4,),
                    ),
                    addVerticalSpace(padding),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          InformationTile(content: "${itemData["area"]}", name: "Square Feet"),
                          InformationTile(content: "${itemData["bedroom"]}", name: "Bedrooms"),
                          InformationTile(content: "${itemData["bathrooms"]}", name: "Bathrooms"),
                          InformationTile(content: "${itemData["garage"]}", name: "Garage"),
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(padding: sidePadding,
                    child: Text(itemData["description"], textAlign: TextAlign.justify, style: themeData.textTheme.bodyText2,),
                    ),
                    addVerticalSpace(100),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OptionButton(text: "Message", icon:Icons.message, width: size.width*0.35),
                    addHorizontalSpace(10),
                    OptionButton(text: "Call", icon:Icons.call, width: size.width*0.35),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
class InformationTile extends StatelessWidget {
  const InformationTile({Key? key, required this.content, required this.name}) : super(key: key);
  
  final String content, name;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData= Theme.of(context);
    final Size size= MediaQuery.of(context).size;
    final double titleSize= size.width*0.25;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BoarderBox(
            width: titleSize,
            height: titleSize,
            child: Text(content, style: themeData.textTheme.headline3,)
          ),
          addVerticalSpace(15),
          Text(name, style: themeData.textTheme.headline6),
        ],
      ),

    );
  }
}