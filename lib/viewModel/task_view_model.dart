import 'package:mobx/mobx.dart';
import 'package:mobx_dio_practice/model/task_model.dart';
import 'package:mobx_dio_practice/service/taskService.dart';
part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
  late TaskService taskService;

  _TaskViewModelBase() {
    taskService = TaskService();
    getTask();
  }

  @observable
  List<TaskModel> taskList = [];

  @observable
  bool isLoading = true;

  @action
  Future<void> getTask() async {
    taskList = await taskService.getTaskService();
    isLoading = false;
  }
}
