import 'package:flutter/material.dart';
import 'package:flutter_learn1/work1/welcome/welcome.dart';
import 'package:flutter_learn1/work2/stateful/home_stateful_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeViewStatefull(),
    );
  }
}