import 'package:flutter/material.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:recipeApp/itemcardData.dart';
import 'package:recipeApp/constants.dart';

class RecipeDetailCard extends StatefulWidget {
  @override
  _RecipeDetailCardState createState() => _RecipeDetailCardState();
}

class _RecipeDetailCardState extends State<RecipeDetailCard> {
  String ingrediants = ItemCardData.recipeIngrediants;
  String procedure = ItemCardData.recipeProcedure;
  String textToShow;
  Color colour;
  double size;
  Color buttonColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textToShow = ingrediants;
    colour = Colors.grey;
    size = 30;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        height: 400.0,
        width: 320.0,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: Wrap(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundedButton(
                size: 20.0,
                padding: EdgeInsets.all(10.0),
                labelText: 'Ingrediants',
                onPressedFunction: () {
                  setState(() {
                    textToShow = ingrediants;
                  });
                },
              ),
              RoundedButton(
                size: 20.0,
                padding: EdgeInsets.all(10.0),
                labelText: 'Recipe',
                onPressedFunction: () {
                  setState(() {
                    textToShow = procedure;
                  });
                },
              ),
              IconButton(
                  icon: Icon(Icons.favorite, color: colour, size: size),
                  onPressed: () {
                    setState(() {
                      if (colour == Colors.red) {
                        colour = Colors.grey;
                        size = 30.0;
                      } else {
                        colour = Colors.red;
                        size = 40.0;
                      }
                    });
                  })
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              textToShow,
              style: kHomePageRecipe.copyWith(
                wordSpacing: 2.0,
                fontSize: 19.0,
                letterSpacing: 2.0,
              ),
            ),
          )
        ]));
  }
}
