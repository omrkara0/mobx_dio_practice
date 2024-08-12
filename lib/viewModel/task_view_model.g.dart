// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskViewModel on _TaskViewModelBase, Store {
  late final _$taskListAtom =
      Atom(name: '_TaskViewModelBase.taskList', context: context);

  @override
  List<TaskModel> get taskList {
    _$taskListAtom.reportRead();
    return super.taskList;
  }

  @override
  set taskList(List<TaskModel> value) {
    _$taskListAtom.reportWrite(value, super.taskList, () {
      super.taskList = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_TaskViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getTaskAsyncAction =
      AsyncAction('_TaskViewModelBase.getTask', context: context);

  @override
  Future<void> getTask() {
    return _$getTaskAsyncAction.run(() => super.getTask());
  }

  @override
  String toString() {
    return '''
taskList: ${taskList},
isLoading: ${isLoading}
    ''';
  }
}
