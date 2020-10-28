import 'package:flutter/material.dart';
import 'package:recipeApp/components/bottom_bar.dart';
import 'package:recipeApp/components/rouned_button.dart';

class FavoriteScreen extends StatelessWidget {
  static String id = 'FavoriteScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/pizza.PNG',
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Divider(
                height: 20.0,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      FavoriteCardContainer(),
                      FavoriteCardContainer()
                    ],
                  ),
                  Row(
                    children: [
                      FavoriteCardContainer(),
                      FavoriteCardContainer()
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 120.0,
          left: 120.0,
          child: RoundedButton(
            labelText: 'Favorites',
            size: 30.0,
            padding: EdgeInsets.all(15.0),
          ),
        )
      ]),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class FavoriteCardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: MaterialButton(
            elevation: 5.0,
            onPressed: () {},
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                child: Image.asset(
                  'images/pancake.PNG',
                  height: 150,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            )));
  }
}

// void main() {
//   return runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(250, 250, 250, 250),
//         appBar: AppBar(
//           leading: Transform.scale(
//             //to change the size of icon
//             scale: 0.5, // size of icon mentioned here
//             // child: IconButton(
//             //     icon: Image.asset('images/backarrow.png'), onPressed: null),
//           ),
//           title: Text('Favorites'),
//           backgroundColor: Color.fromARGB(400, 0, 0, 102),
//         ),
//         body: Fav(),
//         bottomNavigationBar: BottomBar(),
//       ),
//     ),
//   );
// }

// class Fav extends StatelessWidget {
//   static String id = 'Fav';

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 2,
//       children: [
//         Container(
//           margin: EdgeInsets.all(5.0),
//           child: Card(
//             elevation: 10.0,
//             child: Column(
//               children: [
//                 Image.network(
//                   'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F1542062283%2Fchocolate-and-cream-layer-cake-1812-cover.jpg%3Fitok%3DrEWL7AIN',
//                   height: 187.0,
//                   width: 200.0,
//                   fit: BoxFit.cover,
//                 ),
//                 // new SizedBox(
//                 //   height: 5.0,
//                 // ),
//               ],
//             ),
//           ),
//         ),

// //2
//         Container(
//           margin: EdgeInsets.all(5.0),
//           // decoration: BoxDecoration(
//           //   borderRadius: BorderRadius.circular(10),
//           // ),
//           child: Card(
//             elevation: 10.0,
//             child: Column(
//               children: [
//                 Image.network(
//                   'https://english.mathrubhumi.com/polopoly_fs/1.4598756.1583737451!/image/image.jpg_gen/derivatives/landscape_1080_600/image.jpg',
//                   height: 187.0,
//                   width: 200.0,
//                   fit: BoxFit.cover,
//                 ),
//                 // new SizedBox(
//                 //   height: 5.0,
//                 // ),
//               ],
//             ),
//           ),
//         ),

//         ///3
//         Container(
//           margin: EdgeInsets.all(5.0),
//           child: Card(
//             elevation: 10.0,
//             child: Column(
//               children: [
//                 Image.network(
//                   'https://mumbaimirror.indiatimes.com/thumb/77776030.cms?resizemode=4&width=400',
//                   height: 187.0,
//                   width: 200.0,
//                   fit: BoxFit.cover,
//                 ),
//                 // new SizedBox(
//                 //   height: 5.0,
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
