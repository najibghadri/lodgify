part of grouped_tasks;

class GroupedTasksWidget extends HookWidget {
  const GroupedTasksWidget({
    required this.groupTasksNotifier,
    Key? key,
  }) : super(key: key);

  final GroupedTasksNotifier groupTasksNotifier;

  @override
  Widget build(BuildContext context) {
    final groupTasks = useValueListenable(groupTasksNotifier);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
          Text(
            groupTasks.progress.toString(),
          ),
          LinearProgressIndicator(
            value: groupTasks.progress,
          ),
          ExpansionPanelList(
            key: Key(groupTasks.groups.length.toString()),
            children: groupTasks.groups
                .map(
                  (group) => ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(group.name),
                        );
                      },
                      body: Column(
                        children: group.tasks
                            .map(
                              (task) => CheckboxListTile(
                                onChanged: (value) {
                                  if (value != null) {
                                    groupTasksNotifier.updateTaskCheck(
                                        taskGroupIndex: task.taskGroupIndex,
                                        taskIndex: task.taskIndex,
                                        checked: value);
                                  }
                                },
                                value: task.checked,
                                title: Text(task.description),
                              ),
                            )
                            .toList(),
                      ),
                      isExpanded: true),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
