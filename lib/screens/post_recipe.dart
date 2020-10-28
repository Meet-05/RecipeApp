import 'package:flutter/material.dart';
import 'package:recipeApp/constants.dart';

class PostRecipe extends StatelessWidget {
  static String id = "PostScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff081d42),
        title: Text(
          "Post recipe",
          style: kHomePageRecipe,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Name'),
                maxLength: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Preparation Time'),
                // maxLength: 10,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Ingredients'),
                maxLines: null,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Steps'),
                maxLines: null,
              ),
            ),
            new OutlineButton(
              onPressed: null,
              child: Text("Submit"),
              // hoverColor: Color(0xff081d42),
              color: Color(0xff081d42),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}