import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/favorite/view/favorites.dart';
import 'package:flutter_app/screens/homepage/view/homepage.dart';
import 'package:flutter_app/screens/recipe/view/recipe.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final fragments = [HomePage(), Recipe(), Favorites()];

  void currentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: new ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'DELIVER TO',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 4,),
              GestureDetector(
                child: Text('New York City',style: TextStyle(fontSize: 12),),
                onTap: () {
                  print("tapped subtitle");
                },
              )
            ],
          ),
          leading: Icon(Icons.person_pin_circle),
          actions: <Widget>[
            CircleAvatar(
              child: Text('M'),
            )
          ],
        ),
        body: fragments[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              currentIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video),
                title: Text('Recipe'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text('Favorite'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
