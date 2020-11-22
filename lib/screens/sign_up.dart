import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:recipeApp/constants.dart';
import 'package:recipeApp/components/rouned_button.dart';
import 'package:recipeApp/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  static String id = 'Signup';

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool startSpinning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C48),
      body: ModalProgressHUD(
        inAsyncCall: startSpinning,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
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
                  style: kHomePageRecipe.copyWith(color: Colors.white),
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: "Email id",
                  ),
                  onChanged: (newEmail) {
                    email = newEmail;
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  style: kHomePageRecipe.copyWith(color: Colors.white),
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: "Password"),
                  onChanged: (newPassword) {
                    password = newPassword;
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                RoundedButton(
                  labelText: 'SignUp',
                  size: 30.0,
                  padding: EdgeInsets.all(20.0),
                  onPressedFunction: () async {
                    print('$email');
                    setState(() {
                      startSpinning = true;
                    });
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(context, HomePage.id);
                      }
                      setState(() {
                        startSpinning = false;
                      });
                    } catch (e) {
                      print(e);
                      setState(() {
                        startSpinning = false;
                      });
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
