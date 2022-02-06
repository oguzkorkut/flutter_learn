import 'package:flutter/material.dart';
import 'package:flutter_learn1/work3/core/localizate/application_strings.dart';
import 'package:flutter_learn1/work3/core/widgets/card/food_card.dart';
import 'package:flutter_learn1/work3/core/widgets/wrap/icon_text.dart';

import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildPadding(context),
    );
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: insetsAll,
      // const EdgeInsets.all(30.0),

      child: buildColumnBody(context),
    );
  }

  Column buildColumnBody(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 4, child: buildListViewFoodList()),
        // Expanded(child: Container(color: Colors.yellow)),
        Spacer(),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Spacer(),
                Expanded(child: buildrowSubTotal()),
                Expanded(child: buildRowDelivery()),
                Expanded(flex: 2, child: buildRowTotal()),
                Spacer(),
              ],
            )),
        Expanded(flex: 1, child: buildElevatedButton(context)),
        // Spacer(),
      ],
    );
  }

  ListView buildListViewFoodList() {
    return ListView.builder(
      itemCount: foodItemList.length,
      itemBuilder: (context, index) => FoodCardWidget(
        model: foodItemList[index],
      ),
      // Card(
      //   color: colorScheme.onSecondary,
      //   child: ListTile(
      //     leading: Image.asset(foodItemList[index].image),
      //     title: Text(foodItemList[index].title),
      //     trailing: Text(
      //       foodItemList[index].money,
      //       style: textTheme.headline6!
      //           .copyWith(fontWeight: FontWeight.w500),
      //     ),
      //   ),
      // ),
    );
  }

  Row buildrowSubTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildTextSubTitle(applicationStrings.subTotal),
        Text('9,30'),
      ],
    );
  }

  Row buildRowDelivery() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildTextSubTitle(applicationStrings.delivery),
        Text('data'),
      ],
    );
  }

  Row buildRowTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(applicationStrings.total,
            style: textTheme.headline5!.copyWith(
                color: colorScheme.onPrimary, fontWeight: FontWeight.bold)),
        Text(
          '9.30',
          style: textTheme.headline5!.copyWith(color: colorScheme.onPrimary),
        ),
      ],
    );
  }

  Text buildTextSubTitle(String title) {
    return Text(
      title,
      style: textTheme.bodyText1!.copyWith(color: colorScheme.onPrimary),
    );
  }

  ElevatedButton buildElevatedButton(BuildContext context) {
    return ElevatedButton(
      // child: Text(ApplicationStrings.instance.checkOut),
      child: Center(child: buildWrapIconText()),
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary),
          shape: MaterialStateProperty.all(StadiumBorder())),
    );
  }

  Widget buildWrapIconText() {
    return IconTextWidget(
        title: ApplicationStrings.instance.checkOut,
        icon: Icons.arrow_right_alt_outlined);

    //  Wrap(
    //   spacing: 10,
    //   children: [
    //     Icon(
    //       Icons.arrow_right_alt_outlined,
    //       color: theme.colorScheme.primary,
    //     ),
    //     Text(
    //       ApplicationStrings.instance.checkOut,
    //       style:
    //           textTheme.headline6!.copyWith(color: theme.colorScheme.primary),
    //     )
    //   ],
    // );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      // title: Text('Card', style: TextStyle(fontSize: 20, color: Color.fromARGB(116, 138, 137, 1)),),
      title: Text(ApplicationStrings.instance.cartTitle,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold)),
    );
  }
}
