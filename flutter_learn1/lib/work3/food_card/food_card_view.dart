import 'package:flutter/material.dart';
import 'package:flutter_learn1/work3/core/localizate/application_strings.dart';

import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Expanded(flex: 4, child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.yellow)),
          Expanded(flex: 2, child: Container(color: Colors.blue)),
          Expanded(
              flex: 1,
              child: ElevatedButton(
                // child: Text(ApplicationStrings.instance.checkOut),
                child:
                    Center(child: Text(ApplicationStrings.instance.checkOut)),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor),
                    shape: MaterialStateProperty.all(StadiumBorder())),
              )),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      // title: Text('Card', style: TextStyle(fontSize: 20, color: Color.fromARGB(116, 138, 137, 1)),),
      title: Text(ApplicationStrings.instance.cartTitle,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary)),
    );
  }
}
