import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FoodDetails extends StatelessWidget {
  String name;
  FoodDetails({this.name});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jannat RannaGhor',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FoodHome(name),
    );
  }
}

class FoodHome extends StatefulWidget {
  String name;
  FoodHome(this.name);

  @override
  _FoodHomeState createState() => _FoodHomeState(name);
}

class _FoodHomeState extends State<FoodHome> {
  String name;
  _FoodHomeState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: () {


            }),
            IconButton(icon: Icon(Icons.favorite), onPressed: () {

            }),
          ],
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              name,
              style: TextStyle(fontSize: 28.0, color: Colors.white),
            ),
            centerTitle: true,
            background: Hero(
              tag: "service_icn",
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/food_icon.jpg"),
              ),
            ),
          ),
        ),
        SliverFillRemaining(
          child: Column(children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "উপকরন:",
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "২ পাউণ্ড খাসির মাংস\n১ চা চামচ আদা বাটা\n২ চা চামচ রসুন বাটা\n৩-৪ শুকনো মরিচ\n২-৩ টি দারুচিনি টুকরা,প্রতিটি আধা ইঞ্চি\n৪-৫ টি ছোট এলাচ",
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "প্রণালী:",
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "১. ওভেন ৩৫০ ডিগ্রী ফারেনহাইটে প্রি-হিট করুন।\n২. দুধে জাফরান যোগ করুন।\n৩. চাল ঝড়ানো ১ কাপ গরম পানিতে মাখন / ঘি যোগ করুন।\n৫. মাংসের উপরে ভাজা আলু যোগ করুন।\n5. কিছু ভাজা পেঁয়াজ (বেরেস্তা) ছিটিয়ে দিন।\n৬. আলুবোখারা ছড়িয়ে দিন।১৪.  সালাদ, কাবাব এবং চাটনির সাথে sathe poribeshon korun পরিবেশন করুন।",
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
