import 'package:flutter/material.dart';

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
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}

class _myAppState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text("DashBoard"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  "-- রান্না ঘর --",
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
            Image(image: AssetImage('assets/food_icon.png'),),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return Center(
                  child: GestureDetector(
                    onTap: () {
                      print("Container $index");
                    },
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.white,
                        margin: EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[

                            Center(
                              child: Text(
                                'Item $index',
                                style: Theme.of(context).textTheme.headline,
                              ),
                            ),
                          ],
                        )),
                  ),
                );
              }),
            )
          ],
        ),
      )),
    ));
  }

  int clicktime = 0;

  _clickme() {
    setState(() {
      clicktime++;
    });
  }
}
