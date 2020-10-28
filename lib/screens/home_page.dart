import 'package:flutter/material.dart';
import 'package:recipeApp/itemcardData.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/components/bottom_bar.dart';

final itemcardList = ItemCardData();

class HomePage extends StatelessWidget {
  static const id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            RawMaterialButton(
              onPressed: () {},
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/dp.jpg'),
              ),
            )
          ],
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {}),
          title: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Search for a recipe'),
            ),
          ),
        ),
        body: Column(
          children: [
            ItemCardData(),
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}
