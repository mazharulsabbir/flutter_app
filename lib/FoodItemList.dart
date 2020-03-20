import 'package:flutter/material.dart';
class ListActivity extends StatefulWidget {
  @override
  _ListActivityState createState() => _ListActivityState();
}

class _ListActivityState extends State<ListActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
        centerTitle: true,
      ),
      body: SafeArea(

        child: Text("Hello"),
      ),
    );
  }
}
