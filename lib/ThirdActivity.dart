import 'package:flutter/material.dart';
import 'FoodItemList.dart';

void main(){
  runApp(MaterialApp(
    title:"Third Activity",
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
