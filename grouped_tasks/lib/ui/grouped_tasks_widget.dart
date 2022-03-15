import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:grouped_tasks/logic/grouped_tasks_state_notifier.dart';
import 'package:grouped_tasks/ui/components/progress_bar.dart';

import 'components/expandable_task_group.dart';

// TODO: refactor into components later
// TODO: use animation for custom expansion
// TODO: custom progressbar or use package?

class GroupedTasksWidget extends HookWidget {
  const GroupedTasksWidget({
    required this.groupTasksNotifier,
    Key? key,
  }) : super(key: key);

  final GroupedTasksNotifier groupTasksNotifier;

  @override
  Widget build(BuildContext context) {
    final groupTasks = useValueListenable(groupTasksNotifier);

    final expansions = useState(<bool>[]);

    useEffect(() {
      expansions.value = List<bool>.generate(groupTasks.groups.length,
          (i) => i == 0); // first group open by default
    }, [groupTasks.groups.length]);

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
            const Text(
              'Lodgify Grouped Tasks',
              style: TextStyle(fontSize: 40),
            ),
            ProgressBar(
              height: 20,
              value: groupTasks.progress,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Material(
                clipBehavior: Clip.antiAlias,
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
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider(height: 1);
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    key: Key(groupTasks.groups.length.toString()),
                    shrinkWrap: true,
                    itemCount: groupTasks.groups.length,
                    itemBuilder: (context, index) {
                      return ExpandableTaskGroup(
                        expansionCallback: () {
                          final newExpansions = [...expansions.value];
                          newExpansions[index] = !expansions.value[index];
                          expansions.value = newExpansions;
                        },
                        groupTasksNotifier: groupTasksNotifier,
                        isExpanded: expansions.value[index],
                        taskGroup: groupTasks.groups[index],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
