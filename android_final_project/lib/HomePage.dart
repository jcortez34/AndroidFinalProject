import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';
import 'package:android_final_project/MenuCard.dart';
import 'package:android_final_project/MainCarousel.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jays Cafe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StoreHomePage(title: 'Cafe Home'),
    );
  }
}

class StoreHomePage extends StatelessWidget {
  final String title;

  const StoreHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return ScopedModel<MyModel>(
      model:MyModel(),
      child: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Text(title),),
      body: Column(children: <Widget>[
            MainCarouselPage(),
      ],),
    ),
    );
  }
}

