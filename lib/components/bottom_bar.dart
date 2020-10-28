import 'package:flutter/material.dart';
import 'package:recipeApp/screens/post_recipe.dart';
import 'package:recipeApp/screens/profile_screen.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 40.0,
                    ),
                    onPressed: () {}),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.black,
                  child: RawMaterialButton(
                      child: Icon(
                        Icons.add,
                        size: 50.0,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, PostRecipe.id);
                      }),
                ),
                IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 40.0,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, ProfileScreen.id);
                    })
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Container(
                height: 1.0,
                width: 130.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
