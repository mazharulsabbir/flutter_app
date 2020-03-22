import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'FoodItemList.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Jannat RannaGhor',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Material myItems(IconData icon,String heading, int color){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(heading,
                    style: TextStyle(
                      color: new Color(color),
                      fontSize: 20.0,
                    ),),
                  ),

                  //Icons
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                      color: Colors.white,),

                    ),

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text("-- রান্না ঘর --",style: TextStyle(fontSize: 28),),
        centerTitle: true,
      ),


     body: StaggeredGridView.count(
       crossAxisCount: 2,
       crossAxisSpacing: 12.0,
       mainAxisSpacing: 12.0,
       padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
      children: <Widget>[
        myItems(Icons.graphic_eq,"TotalViews",0xffed622b),
        myItems(Icons.bookmark,"Bookmark",0xffed622b),
        myItems(Icons.notifications,"Notifications",0xffed622b),
        myItems(Icons.attach_money,"Balance",0xffed622b),
        myItems(Icons.settings,"Settings",0xffed622b),
        myItems(Icons.group_work,"Group Work",0xffed622b),
        myItems(Icons.message,"Message",0xffed622b),
      ],
       staggeredTiles: [
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),

         StaggeredTile.extent(2, 130.0),

         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 250.0),
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),
       ],


     ),
    );
  }


  void gotoSecondActivity() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ListActivity()));
  }
}
