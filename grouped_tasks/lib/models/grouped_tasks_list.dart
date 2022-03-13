part of grouped_tasks;

class GroupedTasksList extends Equatable {
  final List<TaskGroup> groups;

  const GroupedTasksList({
    required this.groups,
  });

  @override
  List<Object?> get props => [groups];

  static GroupedTasksList fromJson(dynamic jsonData) {
    return GroupedTasksList(
      groups: List<TaskGroup>.from((jsonData as Iterable)
          .mapIndexed((i, e) => TaskGroup.fromJson(e, i))),
    );
  }
}
