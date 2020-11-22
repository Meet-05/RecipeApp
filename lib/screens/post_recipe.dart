import 'package:flutter/material.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _fireStore = FirebaseFirestore.instance;
final _auth = FirebaseAuth.instance;

class PostRecipe extends StatefulWidget {
  static String id = "PostScreen";

  @override
  _PostRecipeState createState() => _PostRecipeState();
}

class _PostRecipeState extends State<PostRecipe> {
  User loggedInUser;
  String recipeName;
  String preparationTime;
  String ingredients;
  String steps;

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff081d42),
        title: Text(
          "Post recipe",
          style: kHomePageRecipe.copyWith(letterSpacing: 3.0, fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                style: kHomePageRecipe,
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
                maxLength: 15,
                onChanged: (newValue) {
                  recipeName = newValue;
                },
              ),
              TextField(
                style: kHomePageRecipe,
                decoration: InputDecoration(hintText: 'Preparation Time'),
                maxLength: 15,
                onChanged: (newValue) {
                  preparationTime = newValue;
                },
              ),
              TextField(
                style: kHomePageRecipe,
                decoration: InputDecoration(hintText: 'Ingredients'),
                maxLength: 50,
                onChanged: (newValue) {
                  ingredients = newValue;
                },
              ),
              TextField(
                style: kHomePageRecipe,
                decoration: InputDecoration(hintText: 'Steps'),
                maxLength: 60,
                onChanged: (newValue) {
                  steps = newValue;
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: RoundedButton(
                  labelText: "Submit",
                  size: 20.0,
                  onPressedFunction: () {
                    _fireStore.collection('Recipe').add({
                      'authorname': loggedInUser.email,
                      'ingredients': ingredients,
                      'name': recipeName,
                      'preparationTime': preparationTime,
                      'steps': steps
                    });
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.all(10.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
