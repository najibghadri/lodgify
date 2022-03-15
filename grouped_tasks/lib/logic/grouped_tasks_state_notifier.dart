import 'package:flutter/foundation.dart';
import 'package:grouped_tasks/models/grouped_tasks_list.dart';

// We could use StateNotifier if we want to use provider or riverpod too

class GroupedTasksNotifier extends ValueNotifier<GroupedTasksList> {
  GroupedTasksNotifier() : super(GroupedTasksList.empty);

  updateTasks(GroupedTasksList tasks) {
    value = tasks;
  }

  updateTaskCheck({
    required int taskGroupIndex,
    required int taskIndex,
    required bool checked,
  }) {
    value = value.copyWithTaskChecked(
        taskGroupIndex: taskGroupIndex, taskIndex: taskIndex, checked: checked);
  }
}
