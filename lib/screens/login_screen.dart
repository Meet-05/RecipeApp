import 'package:flutter/material.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:recipeApp/components/login_container.dart';
import 'package:recipeApp/screens/sign_up.dart';

class LoginScreen extends StatelessWidget {
  static const String id = "login_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Container(
            color: Color(0xFF1C1C48),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.white,
                      child: Hero(
                          tag: 'logo', child: Image.asset('images/chef.png')),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'New to CookBook?    ',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        RoundedButton(
                          labelText: 'SignUp',
                          onPressedFunction: () {
                            Navigator.pushNamed(context, Signup.id);
                          },
                          size: 15.0,
                          padding: EdgeInsets.all(10.0),
                        ),
                      ],
                    ),
                    color: Colors.green[50],
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                  top: 200, left: 20.0, right: 20.0, bottom: 110.0),
              child: LoginContainer())
        ],
      ),
    ));
  }
}
