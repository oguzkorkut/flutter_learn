import 'package:flutter/material.dart';
import 'package:flutter_learn1/work4/feature/task/viewmodel/task_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskView extends StatelessWidget {
  // const TaskViewWidget({Key? key}) : super(key: key);

  late final TaskViewModel _viewModel = TaskViewModel();

  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.onIncrementCount();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Observer(builder: (_) => Text(_viewModel.count.toString())),

        // title: Observer(builder: (_) {
        //   return Text(_viewModel.count.toString());
        // }),
      ),
    );
  }
}
