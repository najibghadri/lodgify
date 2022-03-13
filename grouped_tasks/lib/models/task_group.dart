part of grouped_tasks;

class _TaskGroupFields {
  static const name = 'name';
  static const tasks = 'tasks';
}

class TaskGroup extends Equatable {
  final String name;
  final List<Task> tasks;

  final int taskGroupIndex;

  const TaskGroup({
    required this.name,
    required this.tasks,
    required this.taskGroupIndex,
  });

  @override
  List<Object?> get props => [name, tasks];

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
}
