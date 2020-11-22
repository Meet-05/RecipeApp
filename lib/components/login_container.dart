import 'package:flutter/material.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginContainer extends StatefulWidget {
  @override
  _LoginContainerState createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  bool startSpinning = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: startSpinning,
      child: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
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
                style: kHomePageRecipe.copyWith(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (newEmail) {
                  email = newEmail;
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                style: kHomePageRecipe.copyWith(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (newPassword) {
                  password = newPassword;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your Password'),
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
                    onPressedFunction: () async {
                      setState(() {
                        startSpinning = true;
                      });

                      print('$email ');
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (user != null) {
                          Navigator.pushNamed(context, HomePage.id);
                        }
                        setState(() {
                          startSpinning = false;
                        });
                      } catch (e) {
                        setState(() {
                          startSpinning = false;
                        });
                        print(e);
                      }
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
