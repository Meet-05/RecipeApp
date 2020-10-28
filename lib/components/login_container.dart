import 'package:flutter/material.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/screens/home_page.dart';

class LoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: Colors.grey[300]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'CookBook',
            style: TextStyle(
                letterSpacing: 6.0,
                fontSize: 50.0,
                fontFamily: 'Cabin',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.0,
          ),
          TextField(
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {},
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {},
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your Password'),
          ),
          MaterialButton(
            padding: EdgeInsets.only(left: 180.0),
            onPressed: () {},
            child: Text('Forgot Password'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              RoundedButton(
                labelText: 'Login',
                size: 25.0,
                padding: EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                onPressedFunction: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
