import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

      child: GestureDetector(
        onTap: (){
          gotoSecondActivity();
        },
        child: Material(
          borderRadius: BorderRadius.circular(25),
          elevation: 4,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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

                    ),

                    //Text
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,
                        style: TextStyle(
                          color: new Color(color),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("-- রান্না ঘর --",style: TextStyle(fontSize: 28),),
        centerTitle: true,
      ),


     body: StaggeredGridView.count(
       crossAxisCount: 2,
       crossAxisSpacing: 12.0,
       mainAxisSpacing: 12.0,
       padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
      children: <Widget>[

        myItems(Icons.fastfood,"নাস্তা",0xffed622b),
        myItems(Icons.fastfood,"পানীয়",0xffed622b),
        myItems(Icons.fastfood,"খিচুড়ি,পোলাও বিরিয়ানি ",0xffed622b),
        myItems(Icons.fastfood,"মাছ",0xffed622b),
        myItems(Icons.fastfood,"মাংস",0xffed622b),
        myItems(Icons.fastfood,"ডাল",0xffed622b),
        myItems(Icons.fastfood,"ডিম",0xffed622b),
        myItems(Icons.fastfood,"শাক-সবজি",0xffed622b),
        myItems(Icons.fastfood,"পিঠা",0xffed622b),
        myItems(Icons.fastfood,"মিষ্টি",0xffed622b),
        myItems(Icons.fastfood,"কেক, বিস্কুট, পুডিং",0xffed622b),
        myItems(Icons.fastfood,"সুপ",0xffed622b),
        myItems(Icons.fastfood,"আচার",0xffed622b),
        myItems(Icons.fastfood,"চাইনিজ খাবার",0xffed622b),
        myItems(Icons.fastfood,"থাই খাবার",0xffed622b),

      ],
       staggeredTiles: [

         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),

         StaggeredTile.extent(2, 130.0),

         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(2, 130.0),
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(2, 150.0),
         StaggeredTile.extent(1, 150.0),
         StaggeredTile.extent(1, 150.0),
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