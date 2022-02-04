import 'package:flutter/material.dart';
import 'package:flutter_learn1/work3/food_card/food_card.dart';
// import 'package:flutter_learn1/work3/food_card/food_card.dart';
// import 'package:flutter_learn1/work3/food_card/food_card_view.dart';
// import 'package:flutter_learn1/work1/welcome/welcome.dart';
// import 'package:flutter_learn1/work2/stateful/home_stateful_view.dart';
// import 'package:flutter_learn1/work3/food_card/food_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Card',
      home: FoodCard(),
    );
  }
}