import 'package:flutter/material.dart';
import 'package:flutter_learn1/work3/core/base/base_statefull.dart';

class FoodDashboardView extends StatefulWidget {
  // FoodDashboardView({Key? key}) : super(key: key);

  @override
  State<FoodDashboardView> createState() => _FoodDashboardViewState();
}

class _FoodDashboardViewState extends BaseStateFull<FoodDashboardView> {
  final String _randomImage = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(applicationStrings.foodDashBoard),
      ),
      body: buildListView(),
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return Text('index');
      // }),
      // body: ListView(
      //   children: List.generate(50, (index) {
      //     return Text('index');
      //   }),
      // ),
    );
  }

  ListView buildListView() {
    return ListView(
      children: [
        SizedBox(
            height: dynamichHeight(0.3), // sayfanın %30 u
            child: PageView.builder(
              itemBuilder: (context, index) => Image.network(
                _randomImage,
                fit: BoxFit.cover,
              ),
            )),
        Padding(padding: EdgeInsets.all(8.0), child: Placeholder()),
        FlutterLogo(),
        SizedBox(
          height: dynamichHeight(0.5),
          child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(), // ana scroll u kilitler
              itemBuilder: (context, index) => Card(
                    child: ListTile(
                      title: Text(index.toString()),
                    ),
                  )),
        ),
        Padding(padding: EdgeInsets.all(8.0), child: Placeholder()),
      ],
    );
  }
}
