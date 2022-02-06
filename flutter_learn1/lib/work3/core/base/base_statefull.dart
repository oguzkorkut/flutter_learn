import 'package:flutter/material.dart';
import 'package:flutter_learn1/work3/core/images/image_constants.dart';
import 'package:flutter_learn1/work3/core/localizate/application_strings.dart';

abstract class BaseStateFull<T extends StatefulWidget> extends State<T> {
  ApplicationStrings applicationStrings = ApplicationStrings.instance;

  TextTheme get textTheme => Theme.of(context).textTheme;

  ThemeData get theme => Theme.of(context);

  ColorScheme get colorScheme => Theme.of(context).colorScheme;

  ImageConstants get imageConstants => ImageConstants.instance;
  // ImageConstants imageConstants = ImageConstants.instance;

  EdgeInsets insetsAll = EdgeInsets.all(30.0);

  double dynamichHeight(double val) => MediaQuery.of(context).size.height * val;
}
