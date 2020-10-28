import 'package:flutter/material.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:recipeApp/constants.dart';

class ItemCard extends StatelessWidget {
  //image,name,minutes,prepare funtion
  final String name;
  final String time;
  final String imageName;
  final Function onPressed;

  ItemCard(
      {@required this.imageName,
      @required this.name,
      @required this.onPressed,
      @required this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: Color(0xFFF1F1F1),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: Container(
          margin:
              EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: kHomePageRecipe),
                Text(
                  time,
                  style: kHomePageRecipe,
                )
              ],
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: Image.asset(
                    'images/$imageName.PNG',
                    height: 190,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 100,
                  child: RoundedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 7.0),
                    labelText: 'Prepare',
                    size: 28.0,
                    onPressedFunction: onPressed,
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
