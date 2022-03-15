import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grouped_tasks/models/task.dart';
import 'package:collection/collection.dart';

part 'task_group.freezed.dart';

class _TaskGroupFields {
  static const name = 'name';
  static const tasks = 'tasks';
}

@freezed
class TaskGroup with _$TaskGroup {
  factory TaskGroup({
    required String name,
    required List<Task> tasks,
    required int taskGroupIndex,
    required bool isDone,
  }) = _TaskGroup;

  static TaskGroup fromJson(
    dynamic jsonData,
    int taskGroupIndex,
  ) {
    final tasks = List<Task>.from((jsonData[_TaskGroupFields.tasks] as Iterable)
        .mapIndexed((i, e) => Task.fromJson(e, taskGroupIndex, i)));
    bool isDone = tasks.fold(true, (val, task) {
      return val && task.checked;
    });
    return TaskGroup(
      name: jsonData[_TaskGroupFields.name] as String,
      tasks: tasks,
      taskGroupIndex: taskGroupIndex,
      isDone: isDone,
    );
  }
}
