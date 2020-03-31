import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/FoodDetails.dart';
import 'package:http/http.dart' as http;


class ListActivity extends StatefulWidget {
  @override
  _ListActivityState createState() => _ListActivityState();
}

class _ListActivityState extends State<ListActivity> {

  List list_item;


  Future getData() async{
    var url="http://rannaghor.tarmsbd.com/api/recipe.php";
    http.Response response= await http.get(
        url
    );

    setState(() {
      list_item=jsonDecode(response.body);
    });

  }


  @override
  void initState() {

    super.initState();
    getData();
  }

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
          itemCount: list_item==null ? 0: list_item.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  List detais=passData(index);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FoodDetails( details: detais)));
                },
                child: listContainer(
                    context, Icons.fastfood, list_item[index]["name"], "10000"));
          },
        ));
  }
  List passData(int index) {
    List<String> allDetails =[list_item[index]["name"],list_item[index]["materials"],list_item[index]["recipe"],list_item[index]["id"]];
    return allDetails;
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
