import 'package:flutter/material.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:recipeApp/screens/home_page.dart';

class Signup extends StatelessWidget {
  static String id = 'Signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C48),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Hero(
                    tag: 'logo',
                    child: CircleAvatar(
                      radius: 120.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/chef.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                  decoration: kTextFieldDecoration.copyWith(hintText: "Name")),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: "Email id",
                  )),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: "Password")),
              SizedBox(
                height: 30.0,
              ),
              RoundedButton(
                labelText: 'SignUp',
                size: 30.0,
                padding: EdgeInsets.all(20.0),
                onPressedFunction: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
