import 'package:flutter/material.dart';
import 'package:recipeApp/screens/login_screen.dart';
import 'package:recipeApp/screens/home_page.dart';
import 'package:recipeApp/screens/recipe_detail.dart';
import 'screens/sign_up.dart';
import 'screens/post_recipe.dart';
import 'screens/profile_screen.dart';
import 'screens/favorite_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomePage.id: (context) => HomePage(),
        RecipeDetail.id: (context) => RecipeDetail(),
        Signup.id: (context) => Signup(),
        PostRecipe.id: (context) => PostRecipe(),
        ProfileScreen.id: (context) => ProfileScreen(),
        FavoriteScreen.id: (context) => FavoriteScreen()
      },
    );
  }
}
