part of grouped_tasks;

class _TaskFields {
  static const description = 'description';
  static const value = 'value';
  static const checked = 'checked';
}

@freezed
class Task with _$Task {
  factory Task({
    required String description,
    required int value,
    required bool checked,
    required int taskGroupIndex,
    required int taskIndex,
  }) = _Task;

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
