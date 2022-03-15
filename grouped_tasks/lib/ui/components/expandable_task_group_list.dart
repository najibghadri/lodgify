import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:collection/collection.dart';

import 'package:grouped_tasks/logic/grouped_tasks_state_notifier.dart';
import 'package:grouped_tasks/models/grouped_tasks_list.dart';

import 'expandable_task_group.dart';

class ExpandableTaskGroupList extends HookWidget {
  const ExpandableTaskGroupList({
    required this.groupTasksNotifier,
    required this.groupTasks,
    Key? key,
  }) : super(key: key);

  final GroupedTasksList groupTasks;
  final GroupedTasksNotifier groupTasksNotifier;

  @override
  Widget build(BuildContext context) {
    final expansions = useState(<bool>[]);

    useEffect(() {
      expansions.value =
          List<bool>.generate(groupTasks.groups.length, (_) => false);
    }, [groupTasks.groups.length]);

    expandGroup(index, isExpanded) {
      final newExpansions = [...expansions.value];
      newExpansions[index] = isExpanded;
      expansions.value = newExpansions;
    }

    useEffect(() {
      // opens the next not completed task group, and closes the completed ones
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        var hasOpenedNext = false;
        groupTasks.groups.forEachIndexed((index, taskGroup) {
          if (taskGroup.isDone && expansions.value[index]) {
            expandGroup(index, false);
          }
          if (!taskGroup.isDone && !hasOpenedNext) {
            hasOpenedNext = true;
            expandGroup(index, true);
          }
        });
      });
    }, [groupTasks]);

    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: const Color(0xFFCCCCCC),
            style: BorderStyle.solid,
          ),
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              height: 1,
              color: Color(0xFF999999),
            );
          },
          physics: const NeverScrollableScrollPhysics(),
          key: Key(groupTasks.groups.length.toString()),
          shrinkWrap: true,
          itemCount: groupTasks.groups.length,
          itemBuilder: (context, index) {
            return ExpandableTaskGroup(
              expansionCallback: () {
                expandGroup(index, !expansions.value[index]);
              },
              groupTasksNotifier: groupTasksNotifier,
              isExpanded: expansions.value[index],
              taskGroup: groupTasks.groups[index],
            );
          },
        ),
      ),
    );
  }
}
