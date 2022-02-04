import 'package:flutter/material.dart';
import 'package:flutter_learn1/work2/core/component/scroll/scroll_bar_single.dart';
import 'package:flutter_learn1/work2/stateful/model/user.dart';

class HomeDetailStateless extends StatelessWidget {
  // const HomeDetailStateless({Key? key}) : super(key: key);

  final User model;

  const HomeDetailStateless({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      // body: Text(model.storyText),
      body: ScrollBarSingle(
        child: Text(model.storyText),
      ),
    );
  }
  
}
