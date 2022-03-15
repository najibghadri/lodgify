import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:grouped_tasks/grouped_tasks.dart';
import 'package:lodgify/logic/dal/tasks_api.dart';

import 'package:lodgify/logic/hooks/use_async_effect.dart';
import 'package:lodgify/logic/hooks/use_group_tasks_notifier.dart';

class AccordionPage extends HookWidget {
  const AccordionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groupTasksNotifier = useGroupTasksNotifier();
    useAsyncEffect(() async {
      final tasks = await TasksApi.getTasks();
      groupTasksNotifier.updateTasks(tasks);
    }, []);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: GroupedTasksWidget(
                groupTasksNotifier: groupTasksNotifier,
                title: 'Lodgify Grouped Tasks',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
