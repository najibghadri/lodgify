part of grouped_tasks;

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
    final task =
        groups[taskGroupIndex].tasks[taskIndex].copyWith(checked: checked);
    groups[taskGroupIndex].tasks[taskIndex] = task;

    var newCheckedSum = checkedSum;
    if (checked) {
      newCheckedSum += task.value;
    } else {
      newCheckedSum -= task.value;
    }

    return copyWith(
        groups: groups,
        progress: newCheckedSum / sum,
        checkedSum: newCheckedSum);
  }
}
