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
  List item_comment=["hello","Hello","Commnet"];

  _FoodHomeState(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(4),
                  width: MediaQuery.of(context).size.width*.15,
                    color: Colors.red,
                    child: Icon(
                      Icons.pan_tool,
                      size: 32,
                      color: Colors.black54,
                    )),
                GestureDetector(
                  onTap: (){
                    showBottomsheet();
                  },
                  child: Container(

                      padding: EdgeInsets.all(4),

                      width: MediaQuery.of(context).size.width*.7,

                      color: Colors.amber,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.comment,
                            size: 32,
                            color: Colors.black54,
                          ),
                          Text("Comments",style: TextStyle(fontSize: 18),)
                        ],
                      )),
                ),
                Container(
                    padding: EdgeInsets.all(4),

                    width: MediaQuery.of(context).size.width*.15,

                    color: Colors.red,
                    child: Icon(
                      Icons.favorite,
                      size: 32,
                      color: Colors.black54,
                    )),
              ],
            ),
          ]),
        ),
      ],
    ));
  }
  void showBottomsheet() {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*.8,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                         },
                  child: listContainer(context, Icons.account_circle,"Name","Comment" ));

                },
              ),
            ),
          ],
        ),
      );
    });
  }
}

listContainer(BuildContext context, IconData comment_image, String name, String comment) {
  return Card(
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5.0),
                width: 35.0,
                height: 35.0,
                child: Icon(comment_image),
              ),
              Column(
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Text(
                      comment,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12),
                    ),
                  ),
                ],
              )
            ],
          ),

        ],
      ),
    ),
  );
}

