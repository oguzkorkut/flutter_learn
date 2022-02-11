import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
  BuildContext? context; // null olaiblir

  _TaskViewModelBase({this.context});

  void setContext(BuildContext? context) {
    this.context = context;
  }

  // tekse döndürülsün
  @computed //  observable obje dinlenecekse kullanilir.
  bool get isOdd => count.isOdd;

  @observable // mobx dinlemeye alıyor
  int count = 0; //

  @action // count değişeceği yer
  void onIncrementCount() {
    count++;
  }
}
