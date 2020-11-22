import 'package:flutter/material.dart';

import 'package:recipeApp/itemcardData.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/components/recipe_detail_card.dart';

class RecipeDetail extends StatelessWidget {
  static const id = 'RecipeDetail';
  final String ingrediants = ItemCardData.recipeIngrediants;
  final String procedure = ItemCardData.recipeProcedure;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('images/pancake.PNG'),
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xFFF1F1F1),
                ),
              ),
            ],
          ),
          Positioned(top: 180.0, left: 40.0, child: RecipeDetailCard()),
          Positioned(
            left: 45.0,
            top: 110,
            child: Text(
              'Pancake',
              style: kHomePageRecipe.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0),
            ),
          ),
        ],
      ),
    );
  }
}
