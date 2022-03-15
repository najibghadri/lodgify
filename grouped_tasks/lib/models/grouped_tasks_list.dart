import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

import 'package:grouped_tasks/logic/progress_calc.dart';
import 'package:grouped_tasks/models/task_group.dart';

part 'grouped_tasks_list.freezed.dart';

@freezed
class GroupedTasksList with _$GroupedTasksList {
  const GroupedTasksList._(); // Added constructor to allow methods

  factory GroupedTasksList({
    required List<TaskGroup> groups,
    required double progress,
    required double sum,
    required double checkedSum,
  }) = _GroupedTasksList;

  static final empty =
      GroupedTasksList(groups: [], progress: 0.0, sum: 0, checkedSum: 0);

  static GroupedTasksList fromJson(dynamic jsonData) {
    final groups = List<TaskGroup>.from(
        (jsonData as Iterable).mapIndexed((i, e) => TaskGroup.fromJson(e, i)));

    final sums = calculateSumAndCheckedSum(groups);
    final sum = sums[0];
    final checkedSum = sums[1];

    final progress = checkedSum / sum;

    return GroupedTasksList(
        groups: groups, progress: progress, sum: sum, checkedSum: checkedSum);
  }

  GroupedTasksList copyWithTaskChecked({
    required int taskGroupIndex,
    required int taskIndex,
    required bool checked,
  }) {
    final group = this.groups[taskGroupIndex];
    if (checked == group.tasks[taskIndex].checked) {
      return this;
    }
    final newTask = group.tasks[taskIndex].copyWith(checked: checked);

    group.tasks[taskIndex] = newTask;

    final newGroupIsDone = group.tasks.fold(true, (bool val, task) {
      return val && task.checked;
    });
    this.groups[taskGroupIndex] = group.copyWith(isDone: newGroupIsDone);

    var newCheckedSum = this.checkedSum;
    if (checked) {
      newCheckedSum += newTask.value;
    } else {
      newCheckedSum -= newTask.value;
    }

    return copyWith(
      groups: this.groups,
      progress: newCheckedSum / this.sum,
      checkedSum: newCheckedSum,
    );
  }
}


// ignore_for_file: unnecessary_this