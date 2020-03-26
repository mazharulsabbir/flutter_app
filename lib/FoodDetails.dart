import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jannat RannaGhor',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FoodHome(),
    );
  }
}

class FoodHome extends StatefulWidget {
  @override
  _FoodHomeState createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Text("Food is a thing which we need everyday Name",
                    style: TextStyle(backgroundColor: Colors.blue.withOpacity(.50)),)),
                centerTitle: true,
                background: Hero(
                  tag: "service_icn",
                  child:Image(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/food_icon.jpg"),
                  ),
                ),
              ),
            ),

          ],
        ));
  }
}
