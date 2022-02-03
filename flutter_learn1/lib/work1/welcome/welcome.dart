import 'dart:math';

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  //const Welcome({Key? key}) : super(key: key);

//_ alt cizgi kullanilirsa private olur field
  final _appBarTitle = 'Welcome';

  final _randomImage = 'https://picsum.photos/200/300';

  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (context) => Column());
                },
                icon: Icon(Icons.favorite))
          ],
          title: buildRowAppBarTitle(context)),
      body: Column(
        children: [
          // üç tane container olsun ve ilkinin yüksekliği %80 olsun
          Expanded(
            flex: 8,
            child: buildListViewTop(context),
          ),
          Expanded(
            flex: 4,
            child: buildListView(),
          ),

          Expanded(
            flex: 4,
            child: Container(
              // içerisi boşsa widget kullanmamlıyız
              width: 100,
              // height: 100,
              color: Colors.red,
              child: ListView.builder(
                  itemCount:
                      100, // ekran ilerledikçe ekranı doldurmaya başlıyor.
                  itemBuilder: (context, index) {
                    return Text('$index');
                  }),
            ),
          ),
          Expanded(
            flex: 1,
            child: buildDismissiblebottomCard(),
          ),
        ],
      ),
    );
  }

  Row buildRowAppBarTitle(BuildContext context) {
    return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wallpaper),
            Text(_appBarTitle,
                style: Theme.of(context)
                    .primaryTextTheme
                    .headline4!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary))
            // .copyWith(color: Colors.white))
          ],
        );
  }

  ListView buildListViewTop(BuildContext context) {
    return ListView(
            children: [
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: randomColor),
              // Container(width: 500, height: 100, color: randomColor),
            ],
          );
  }

  ListView buildListView() {
    return ListView.builder(
              itemCount:
                  100, // ekran ilerledikçe ekranı doldurmaya başlıyor. 100 item doldurur
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(_randomImage),
                    ),
                    // leading: Image.network(_randomImage),
                    // Icon(Icons.face),
                    title: Text('$_appBarTitle $index'),
                    trailing: Icon(Icons.arrow_right_alt),
                  ),
                );
              });
  }

  Dismissible buildDismissiblebottomCard() {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.black,
      ),
      secondaryBackground: Container(
        color: Colors.blue,
      ),
      child: buildContainerBottom(),
    );
  }

  Container buildContainerBottom() {
    return Container(
      // width: 100,
      // height: 100,
      color: Colors.yellow,
    );
  }
}
