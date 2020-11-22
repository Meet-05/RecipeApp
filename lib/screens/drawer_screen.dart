import 'package:flutter/material.dart';
import 'package:recipeApp/components/custom_tile.dart';
import 'package:recipeApp/constants.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/chef.png'),
                    backgroundColor: Colors.white,
                    radius: 60.0,
                  ),
                  Text(
                    'CookBook',
                    style: kHomePageRecipe.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
              label: 'Favorites', icondata: Icons.favorite, onTap: () {}),
          CustomTile(
              label: 'My Posts',
              icondata: Icons.local_post_office,
              onTap: () {}),
          CustomTile(
              label: 'Logout', icondata: Icons.settings_power, onTap: () {}),
        ],
      ),
    );
  }
}
