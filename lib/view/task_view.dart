import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_dio_practice/viewModel/task_view_model.dart';

class TaskView extends StatelessWidget {
  final TaskViewModel taskViewModel = TaskViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
      ),
      body: Observer(builder: (_) {
        return taskViewModel.isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: taskViewModel.taskList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(taskViewModel.taskList[index].title ?? ""),
                    trailing: Checkbox(
                      value: taskViewModel.taskList[index].completed,
                      onChanged: (bool? value) {
                        taskViewModel.taskList[index].completed = value!;
                      },
                    ),
                    leading: Text(
                      taskViewModel.taskList[index].id.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                },
              );
      }),
    );
  }
}
