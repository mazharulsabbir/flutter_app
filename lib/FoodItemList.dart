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
          title: Text("Pitha",style: TextStyle(fontSize: 28),),
          snap: false,
          pinned: true,
          centerTitle: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
            listContainer(Icons.fastfood,"Name",5),
            listContainer(Icons.fastfood,"Name",5),
            listContainer(Icons.fastfood,"Name",5),
            listContainer(Icons.fastfood,"Name",5),
            listContainer(Icons.fastfood,"Name",5),
            listContainer(Icons.fastfood,"Name",5),
            ]
          ),
        )
      ],

      ),
    );
  }


}

listContainer(IconData image, String name, int like) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(image),
        Text(name),
        Text(like.toString())
      ],
    ),
  );
}
