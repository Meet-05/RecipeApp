import 'package:flutter/material.dart';
import 'package:recipeApp/screens/favorite_screen.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  static String id = "ProfileScreen";
  // hexcolor(String colorhexcode) {
  //   String colornew = '0xff' + colorhexcode;
  //   colornew = colornew.replaceAll('#', '');
  //   int colorint = int.parse(colornew);
  //   return colorint;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_backspace,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: Text(
            "My Profile",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey[50],
        ),
        backgroundColor: Color(0xff081d42),
        body: SafeArea(
          //child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('images/dp.jpg'),
              ),
              Text('Welcome chef',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              SizedBox(
                  height: 20.0,
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  )),
              Container(
                height: 25.0,
                width: 75.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                margin: EdgeInsets.only(top: 10.0),
                child: Center(child: Text("Edit")),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, FavoriteScreen.id);
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(30, 50, 30, 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Transform.scale(
                        scale: 1.2,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    title: Text(
                      'Favorites',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, FavoriteScreen.id);
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Transform.scale(
                        scale: 1.2,
                        child: Icon(
                          Icons.face,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    title: Text(
                      'My Posts',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Icon(
                        Icons.exit_to_app,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
