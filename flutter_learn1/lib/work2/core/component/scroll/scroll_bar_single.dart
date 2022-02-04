import 'package:flutter/material.dart';

class ScrollBarSingle extends StatelessWidget {
  // const ScrollBarSingle({Key? key}) : super(key: key);

  final Widget child;

  const ScrollBarSingle({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(child: SingleChildScrollView(child: child,),);
  }
}