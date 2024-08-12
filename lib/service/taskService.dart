import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx_dio_practice/model/task_model.dart';

class TaskService {
  final Dio dio = Dio();

  Future<List<TaskModel>> getTaskService() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => TaskModel.fromJson(e)).toList();
      }
      return [];
    } else {
      throw Exception('Failed to load task');
    }
  }
}
