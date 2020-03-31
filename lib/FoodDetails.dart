import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  List details;

  FoodDetails({Key key, @required this.details}) : super(key: key);

  @override
  _FoodHomeState createState() => _FoodHomeState(details);
}

class _FoodHomeState extends State<FoodDetails> {
  List details;

  _FoodHomeState(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: () {}),
            IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          ],
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              details[0],
              style: TextStyle(fontSize: 28.0, color: Colors.white),
            ),
            centerTitle: true,
            background: Hero(
              tag: "service_icn",
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/food_icon.jpg"),
              ),
            ),
          ),
        ),
        SliverFillRemaining(
          child: Column(children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "উপকরন:",
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  details[1],
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "প্রণালী:",
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  details[2],
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
