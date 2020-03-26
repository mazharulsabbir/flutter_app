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
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Food is a thing which we need everyday Name",
                  style:
                      TextStyle(backgroundColor: Colors.blue.withOpacity(.50)),
                )),
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
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "উপকরন:",
                    style: TextStyle(fontSize: 22.0,color: Colors.white),

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
                    style: TextStyle(fontSize: 18.0,color: Colors.black),

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
                    style: TextStyle(fontSize: 22.0,color: Colors.white),

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
                    "১. ওভেন ৩৫০ ডিগ্রী ফারেনহাইটে প্রি-হিট করুন।\n২. দুধে জাফরান যোগ করুন।\n৩. চাল ঝড়ানো ১ কাপ গরম পানিতে মাখন / ঘি যোগ করুন।\n৫. মাংসের উপরে ভাজা আলু যোগ করুন।\n5. কিছু ভাজা পেঁয়াজ (বেরেস্তা) ছিটিয়ে দিন।\n৬. আলুবোখারা ছড়িয়ে দিন।১৪.  সালাদ, কাবাব এবং চাটনির সাথে পরিবেশন করুন।",
                    style: TextStyle(fontSize: 18.0,color: Colors.black),

                  ),
                ),
              ),
            ]
          ),
        )

      ],
    ));
  }
}
