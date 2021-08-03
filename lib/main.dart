import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FLutter",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isEnable = false;
  List a = [
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-1_1.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-2_1.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-3_1.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-4_1.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-5_1.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-6_1.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-7_0.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-8_1.jpg",
    "https://gamedata.britishcouncil.org/sites/default/files/attachment/number-9_1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Images"),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                shape: Border.all(width: 5),
                elevation: 20,
                child: Column(
                  children: <Widget>[
                    FancyShimmerImage(
                      imageUrl: a[index],
                      height: 200,
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: a.length,
        ));
  }
}
