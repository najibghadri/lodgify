part of grouped_tasks;

@freezed
class GroupedTasksList with _$GroupedTasksList {
  factory GroupedTasksList({
    required List<TaskGroup> groups,
    required double progress,
  }) = _GroupedTasksList;

  static final empty = GroupedTasksList(groups: [], progress: 0.0);

  static GroupedTasksList fromJson(dynamic jsonData) {
    final groups = List<TaskGroup>.from(
        (jsonData as Iterable).mapIndexed((i, e) => TaskGroup.fromJson(e, i)));

    final progress = calculate_progress(groups);

    return GroupedTasksList(groups: groups, progress: progress);
  }
}
