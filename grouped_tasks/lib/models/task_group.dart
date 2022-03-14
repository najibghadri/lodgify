part of grouped_tasks;

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
  }) = _TaskGroup;

  static TaskGroup fromJson(
    dynamic jsonData,
    int taskGroupIndex,
  ) {
    Iterable tasks = jsonData[_TaskGroupFields.tasks];
    return TaskGroup(
      name: jsonData[_TaskGroupFields.name] as String,
      tasks: List<Task>.from(
          tasks.mapIndexed((i, e) => Task.fromJson(e, taskGroupIndex, i))),
      taskGroupIndex: taskGroupIndex,
    );
  }

  // TODO copy with / tasks
}
