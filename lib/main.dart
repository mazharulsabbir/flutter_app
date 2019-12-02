import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
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
          appBar: AppBar(
            title: Text("Home Page"),
            centerTitle: true,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "CLick: $clicktime",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Center(
                  child: RaisedButton(
                    color: Colors.red,
                    child: Text("Click"),
                    onPressed: _clickme,

                  ),
                ),
              ],
            ),
          )),
    );
  }

  int clicktime=0;
  _clickme() {
    setState(() {
      clicktime++;
    });
  }
}
