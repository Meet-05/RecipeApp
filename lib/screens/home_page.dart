import 'package:flutter/material.dart';
import 'package:recipeApp/itemcardData.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/screens/post_recipe.dart';
import 'package:recipeApp/screens/drawer_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;

final itemcardList = ItemCardData();

class HomePage extends StatelessWidget {
  static const id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF1C1C48),
          onPressed: () {
            Navigator.pushNamed(context, PostRecipe.id);
          },
          child: Icon(
            Icons.add,
            size: 50.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, PostRecipe.id);
              },
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/dp.jpg'),
              ),
            )
          ],
          title: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              style: kHomePageRecipe.copyWith(color: Colors.white),
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
        drawer: DrawerScreen());
  }
}
