import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        title: 'My App',
        showSemanticsDebugger: false,
        home: HomePage(),
  ));


}
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('DashBoard'),
        ),

        body:Row(
          children: <Widget>[
            Container(
              padding:EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 16,top: 32),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:BorderRadius.circular(8)
              ),
            ),
            Container(
              padding:EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 16,top: 32),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:BorderRadius.circular(8)
              ),
            ),
            Container(
              padding:EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 16,top: 32),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:BorderRadius.circular(8)
              ),
            ),

          ],
        )

      ),
    );
  }
}

