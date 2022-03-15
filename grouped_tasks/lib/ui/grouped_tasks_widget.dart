part of grouped_tasks;

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
            groupTasks.progress.toStringAsFixed(2),
          ),
          LinearProgressIndicator(
            value: groupTasks.progress,
            minHeight: 20,
          ),
          ExpansionPanelList(
            expandedHeaderPadding: EdgeInsets.zero,
            elevation: 0,
            // dividerColor: Colors.transparent,
            key: Key(groupTasks.groups.length.toString()),
            expansionCallback: (index, isExpanded) {
              final newExpansions = [...expansions.value];
              newExpansions[index] = !isExpanded;
              expansions.value = newExpansions;
            },
            children: groupTasks.groups
                .mapIndexed(
                  (index, group) => ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        leading: Icon(
                          group.isDone
                              ? LodgifyIcons.booking_ok
                              : LodgifyIcons.booking_features,
                        ),
                        title: Text(group.name),
                        trailing:
                            Text(expansions.value[index] ? 'Hide' : 'Show'),
                      );
                    },
                    body: Column(
                      children: group.tasks
                          .map(
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
                          )
                          .toList(),
                    ),
                    isExpanded: expansions.value[index],
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
