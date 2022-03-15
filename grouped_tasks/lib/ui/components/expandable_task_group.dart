import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:grouped_tasks/logic/grouped_tasks_state_notifier.dart';
import 'package:grouped_tasks/models/task_group.dart';
import 'package:grouped_tasks/ui/icons/lodgify_icons_icons.dart';

class ExpandableTaskGroup extends HookWidget {
  const ExpandableTaskGroup({
    required this.groupTasksNotifier,
    required this.taskGroup,
    required this.isExpanded,
    required this.expansionCallback,
    Key? key,
  }) : super(key: key);

  final void Function() expansionCallback;
  final bool isExpanded;
  final TaskGroup taskGroup;
  final GroupedTasksNotifier groupTasksNotifier;

  @override
  Widget build(BuildContext context) {
    final animation = useAnimationController(
      initialValue: isExpanded ? 1 : 0,
      duration: const Duration(milliseconds: 200),
    );

    useEffect(() {
      animation.animateTo(isExpanded ? 1 : 0, curve: Curves.ease);
    }, [isExpanded]);

    return Column(
      children: [
        ListTile(
          onTap: () => expansionCallback(),
          leading: Icon(
            taskGroup.isDone
                ? LodgifyIcons.booking_ok
                : LodgifyIcons.booking_features,
          ),
          title: Text(taskGroup.name),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(isExpanded ? 'Hide' : 'Show'),
              Icon(
                isExpanded
                    ? LodgifyIcons.arrow_line_up
                    : LodgifyIcons.arrow_line_down,
              )
            ],
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 7,
          ),
        ),
        SizeTransition(
          axis: Axis.vertical,
          sizeFactor: animation,
          axisAlignment: -1,
          child: Column(
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
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
        ),
      ],
    );
  }
}
