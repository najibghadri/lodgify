import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:grouped_tasks/grouped_tasks.dart';
import 'package:grouped_tasks/ui/icons/lodgify_icons_icons.dart';

class ExpandableTaskGroup extends HookWidget {
  const ExpandableTaskGroup({
    required this.groupTasksNotifier,
    required this.taskGroup,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  final bool isExpanded;
  final TaskGroup taskGroup;
  final GroupedTasksNotifier groupTasksNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: Icon(
            taskGroup.isDone
                ? LodgifyIcons.booking_ok
                : LodgifyIcons.booking_features,
          ),
          title: Text(taskGroup.name),
          trailing: Text(isExpanded ? 'Hide' : 'Show'),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 10),
            ...taskGroup.tasks.map(
              (task) => ListTile(
                onTap: () {
                  groupTasksNotifier.updateTaskCheck(
                      taskGroupIndex: task.taskGroupIndex,
                      taskIndex: task.taskIndex,
                      checked: !task.checked);
                },
                leading: Checkbox(
                    value: task.checked,
                    onChanged: (value) {
                      if (value != null) {
                        groupTasksNotifier.updateTaskCheck(
                            taskGroupIndex: task.taskGroupIndex,
                            taskIndex: task.taskIndex,
                            checked: value);
                      }
                    }),
                title: Text(task.description),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}
