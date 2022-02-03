import 'package:flutter/material.dart';
import 'package:flutter_learn1/work2/core/component/opacity/image_opacity.dart';
import 'package:flutter_learn1/work2/core/enums/duration_enum.dart';
import 'package:flutter_learn1/work2/core/image_manager.dart';

// aksiyon olan işlemler vardır

class HomeViewStatefull extends StatefulWidget {
  HomeViewStatefull({Key? key}) : super(key: key);

  @override
  State<HomeViewStatefull> createState() => _HomeViewStatefullState();
}

class _HomeViewStatefullState extends State<HomeViewStatefull> {
  bool _isLoading = true;

  // final ImageManager imageManager; // nesnenin oluşacağını bildirmek için late yapılmalı
  late ImageManager imageManager;

  // ilk çalışan anda girilir. Sayfa yüklendiğinde yapılacak işler yapılır
  @override
  void initState() {
    super.initState();

    waitForLoading();

    imageManager = ImageManager();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.NORMAL.time);

    // doğrudan atama yapılırsa sadece değer değişir ama ekran değişmez
    // isLoading = true;
    //Ekran değişimi için setState kullanılmalı
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // scaffold ile başlanmalı sayfaya
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            _isLoading ? CircularProgressIndicator() : FlutterLogo(),
            // Image.network(imageManager.randomImage),
            ImageOpacity(url: imageManager.randomImage),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(imageManager.randomImage),
                ),
                title: Text('data'),
                subtitle: Text('description'),
                trailing: Icon(Icons.arrow_right_rounded),
                onTap: () {},
              ),
            )
          ],
        ));
  }
}
