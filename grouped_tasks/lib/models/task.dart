part of grouped_tasks;

class _TaskFields {
  static const description = 'description';
  static const value = 'value';
  static const checked = 'checked';
}

class Task extends Equatable {
  final String description;
  final int value;
  final bool checked;

  final int taskGroupIndex;
  final int taskIndex;

  const Task({
    required this.description,
    required this.value,
    required this.checked,
    required this.taskGroupIndex,
    required this.taskIndex,
  });

  @override
  List<Object?> get props => [description, value, checked];

  static Task fromJson(
    dynamic jsonData,
    int taskGroupIndex,
    int taskIndex,
  ) {
    return Task(
      description: jsonData[_TaskFields.description] as String,
      value: jsonData[_TaskFields.value] as int,
      checked: jsonData[_TaskFields.checked] as bool,
      taskGroupIndex: taskGroupIndex,
      taskIndex: taskIndex,
    );
  }
}
