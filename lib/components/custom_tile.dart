import 'package:flutter/material.dart';
import 'package:recipeApp/constants.dart';

class CustomTile extends StatelessWidget {
  final String label;
  final IconData icondata;
  final Function onTap;
  CustomTile(
      {@required this.label, @required this.icondata, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icondata),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    label,
                    style: kHomePageRecipe,
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}
