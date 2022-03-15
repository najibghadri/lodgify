import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:grouped_tasks/logic/grouped_tasks_state_notifier.dart';
import 'package:grouped_tasks/ui/components/expandable_task_group_list.dart';
import 'package:grouped_tasks/ui/components/progress_bar.dart';

class GroupedTasksWidget extends HookWidget {
  const GroupedTasksWidget({
    required this.groupTasksNotifier,
    Key? key,
  }) : super(key: key);

  final GroupedTasksNotifier groupTasksNotifier;

  @override
  Widget build(BuildContext context) {
    final groupTasks = useValueListenable(groupTasksNotifier);

    return Material(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: const Color(0xFFCCCCCC), // TODO from theme
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lodgify Grouped Tasks',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 16),
                  ProgressBar(
                    height: 24,
                    value: groupTasks.progress,
                    borderRadius: BorderRadius.circular(16),
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: ExpandableTaskGroupList(
                  groupTasks: groupTasks,
                  groupTasksNotifier: groupTasksNotifier,
                )),
          ],
        ),
      ),
    );
  }
}
