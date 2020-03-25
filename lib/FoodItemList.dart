import 'package:flutter/material.dart';

class ListActivity extends StatefulWidget {
  @override
  _ListActivityState createState() => _ListActivityState();
}

class _ListActivityState extends State<ListActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              "Pitha",
              style: TextStyle(fontSize: 28),
            ),
            snap: false,
            pinned: true,
            centerTitle: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              listContainer(context,Icons.fastfood, "Chicken Fry", 5),
              listContainer(context,Icons.fastfood, "Chicken Fry", 5),
              listContainer(context,Icons.fastfood, "Noddoles aljfg aksd kjad lkasdflkj asldkjf lakjsd lkajsdflkjasd hflkjasd flkjas dfla sf kjh ", 5),
              listContainer(context,Icons.fastfood, "Noddoles alj lakjsd lkajsdflkjasd hflkjasd flkjas dfla sf kjh ", 5),
              listContainer(context,Icons.fastfood, "Noddoles aljas dfla sf kjh ", 5),
              listContainer(context,Icons.fastfood, "Noddoles aljfla sf kjh ", 5),
            ]),
          )
        ],
      ),
    );
  }
}

listContainer(BuildContext context,IconData image, String name, int like) {
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
                    child: Text(name,
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
          Stack(
            overflow: Overflow.visible,
            fit: StackFit.loose,
            children: <Widget>[
              Positioned(
                  child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35.0,
              )),
              Positioned(
                top: 8,
                left: 13,
                child: Text(
                  like.toString(),
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
