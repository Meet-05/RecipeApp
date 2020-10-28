import 'package:flutter/material.dart';
import 'components/item_card.dart';
import 'package:recipeApp/screens/recipe_detail.dart';

class ItemCardData extends StatelessWidget {
  static final String recipeIngrediants =
      '2 ounces diced pancetta\nSpanish onion,finely chopped\n1 carrot, finely chopped\n4 tablespoon unsalted butter\n4 ounces ground Italian sausage\n1 fresh ground clove\ndash of fresh ground cinnamon';
  static final String recipeProcedure =
      'Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.\n Lorem Ipsum has been the industrys standard dummy text\n ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries,\n but also the leap into electronic typesetting, remaining essentially unchanged.';
  @override
  Widget build(BuildContext context) {
    final List<ItemCard> itemcardList = [
      ItemCard(
        name: 'Pancakes',
        time: '20 mins',
        imageName: 'pancake',
        onPressed: () {
          Navigator.pushNamed(context, RecipeDetail.id);
        },
      ),
      ItemCard(
        name: 'Burger',
        time: '30 mins',
        imageName: 'burger',
        onPressed: () {
          Navigator.pushNamed(context, RecipeDetail.id);
        },
      ),
      ItemCard(
        name: 'Panner Tikka',
        time: '40 mins',
        imageName: 'paneer tikka',
        onPressed: () {
          Navigator.pushNamed(context, RecipeDetail.id);
        },
      ),
      ItemCard(
        name: 'Pizza',
        time: '20 mins',
        imageName: 'pizza',
        onPressed: () {},
      ),
      ItemCard(
        name: 'Biryani',
        time: '40 mins',
        imageName: 'biryani',
        onPressed: () {},
      ),
      ItemCard(
        name: 'lasagna',
        time: '40 mins',
        imageName: 'lasagna',
        onPressed: () {},
      )
    ];

    return Expanded(
      child: ListView.builder(
          itemCount: itemcardList.length,
          itemBuilder: (context, index) {
            return itemcardList[index];
          }),
    );
  }
}
