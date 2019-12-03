import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:"Food Item",
    home: ListActivity(),
  ));
}

class ListActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeDesign();
  }

}

class HomeDesign extends State<ListActivity> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Title(
            child: Text("Food Item"),
          ),
          centerTitle: true,

        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Text("Hello"),
        ),
      ),

    );
  }
}