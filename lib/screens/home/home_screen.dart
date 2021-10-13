import 'dart:html';

import 'package:flutter/material.dart';
import 'package:halal_cuisines/constants.dart';
import 'package:halal_cuisines/models/recipe.dart';

class HomeScreen extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  //const HomeScreen({Key? key}) : super(key: key);

  //List<Recipe> recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kTextColor,
          elevation: 0,
          title: Text("Hala Cuisine 2"),
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Container(
                  width: 10,
                  height: 10,
                  child: Card(
                      margin: EdgeInsets.all(20),
                      child: ListTile(
                          title: Text(titles[index]),
                          subtitle: Text(subtitles[index]),
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                          trailing: Icon(icons[index]))));
            }));
  }
}
