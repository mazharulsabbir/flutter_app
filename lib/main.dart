import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



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

        body:Container(
          color: Colors.tealAccent,
           width: double.infinity,
           height: double.infinity,
           child: Column(
              children: <Widget>[
                Center(
                  child: Text("Calculator",style: TextStyle(fontSize: 24,color: Colors.red),),
                ),
                Row(children: <Widget>[
                   RaisedButton(
                     textColor: Colors.white,
                     color: Colors.tealAccent,
                     child: Text(
                       "1", style: TextStyle(fontSize: 22,)),

                     shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(5)),
                  ),
                  RaisedButton(
                     textColor: Colors.white,
                     color: Colors.tealAccent,
                     child: Text(
                       "2", style: TextStyle(fontSize: 22,)),

                     shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(5)),
                    onPressed: showToast(context,"2"),
                  ),
                  FlatButton(

                    textTheme: ButtonTextTheme.primary,
                     child: Text(
                       "3", style: TextStyle(fontSize: 22,)),

                     shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(5)),
                    disabledColor: Colors.red,
                    onPressed: showToast(context,"3"),

                  ),

                ],

                )


              ],


            )
        )

             ),
    );
  }

  showToast(context, msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIos: 1,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.indigo,
    );
  }

}

