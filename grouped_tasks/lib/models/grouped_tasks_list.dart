part of grouped_tasks;

@freezed
class GroupedTasksList with _$GroupedTasksList {
  const GroupedTasksList._(); // Added constructor to allow methods

  factory GroupedTasksList({
    required List<TaskGroup> groups,
    required double progress,
  }) = _GroupedTasksList;

  static final empty = GroupedTasksList(groups: [], progress: 0.0);

  static GroupedTasksList fromJson(dynamic jsonData) {
    final groups = List<TaskGroup>.from(
        (jsonData as Iterable).mapIndexed((i, e) => TaskGroup.fromJson(e, i)));

    final progress = calculateProgress(groups);

    return GroupedTasksList(groups: groups, progress: progress);
  }

  GroupedTasksList copyWithTaskChecked({
    required int taskGroupIndex,
    required int taskIndex,
    required bool checked,
  }) {
    print('$taskGroupIndex, $taskIndex, $checked');
    groups[taskGroupIndex].tasks[taskIndex] =
        groups[taskGroupIndex].tasks[taskIndex].copyWith(checked: checked);
    return copyWith(groups: groups, progress: calculateProgress(groups));
  }
}
