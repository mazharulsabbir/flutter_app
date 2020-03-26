import 'package:flutter/material.dart';
import 'package:flutter_app/FoodDetails.dart';

class ListActivity extends StatefulWidget {
  @override
  _ListActivityState createState() => _ListActivityState();
}

class _ListActivityState extends State<ListActivity> {
  List<String> list_item = [
    "1",
    "2",
    "Third",
    "4",
    "2",
    "Third",
    "4",
    "2",
    "Third",
    "4",
    "2",
    "Third",
    "4",
    "2",
    "Third",
    "4"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Pitha",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: list_item.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FoodDetails()));
                },
                child: listContainer(
                    context, Icons.fastfood, list_item[index], "10000"));
          },
        ));
  }
}

listContainer(BuildContext context, IconData image, String name, String like) {
  return Card(
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5.0),
                width: 55.0,
                height: 55.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/food_icon.jpg"),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Text(
                      name,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35.0,
              ),
              Text(
                like.toString(),
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
