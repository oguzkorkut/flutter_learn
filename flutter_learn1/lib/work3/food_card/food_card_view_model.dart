import 'package:flutter/material.dart';
import 'package:flutter_learn1/work3/core/base/base_statefull.dart';
import 'package:flutter_learn1/work3/food_card/food_card.dart';
import 'package:flutter_learn1/work3/food_card/model/food_model.dart';

abstract class FoodCardViewModel extends BaseStateFull<FoodCard> {
  late final List<FoodModel> foodItemList;

  @override
  void initState() {
    super.initState();
    foodItemList = [
      FoodModel('Broccoli', imageConstants.bracoli, '10'),
      FoodModel('Kale', imageConstants.kale, '10'),
      FoodModel('Red Peppers', imageConstants.pepper, '10'),
      FoodModel('Strow Berries', imageConstants.strawBerry, '10'),
    ];
  }
}
