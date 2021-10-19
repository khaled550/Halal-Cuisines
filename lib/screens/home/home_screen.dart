import 'dart:html';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:halal_cuisines/constants.dart';
import 'package:halal_cuisines/models/recipe.dart';
import 'package:halal_cuisines/services/database.dart';

class HomeScreen extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  final dao = Dao();

  //const HomeScreen({Key? key}) : super(key: key);

  //List<Recipe> recipe;

  var heading = '\$2300 per month';
  var subheading = '2 bed, 1 bath, 1300 sqft';
  var cardImage = NetworkImage(
      'https://source.unsplash.com/random/320x250?' + 'grill%food');
  var supportingText =
      'Beautiful home to rent, recently refurbished with modern appliances...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTextColor,
        elevation: 0,
        title: Text("Halal Cuisine"),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            /* gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (3 / 2),
            ), */
            itemCount: subtitles.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  elevation: 4.0,
                  child: Column(
                    children: [
                      FlatButton(
                          child: Text(
                            'Button 1',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          onPressed: () {
                            _sendMessage();
                          }),
                      Container(
                        height: 250,
                        child: Ink.image(
                          image: cardImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.blueGrey[100],
                        height: 50,
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: Text(subtitles[index]),
                      )
                    ],
                  ));
            }),
      ),
    );
  }

  /* final DatabaseReference _messagesRef =
      FirebaseDatabase.instance.reference().child('messages');
  Recipe recipe = new Recipe("r1", "ingredients", "preparation", "video_url",
      "language", "recipe_imge", 1, 1, 5, 55, 8, 6, 8, 30, false);
  void saveMessage(Recipe recipe) {
    _messagesRef.push().set(recipe.toJson());
  } */

  void _sendMessage() {
    final Recipe recipe = new Recipe(
        "r1",
        "ingredients",
        "preparation",
        "video_url",
        "language",
        "recipe_imge",
        1,
        1,
        5,
        55,
        8,
        6,
        8,
        30,
        false);
    dao.saveMessage(recipe);
  }
}
