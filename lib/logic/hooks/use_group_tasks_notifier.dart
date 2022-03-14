import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grouped_tasks/grouped_tasks.dart';

/// Creates a GroupedTasksNotifier that is a ValueNotifier and listens to it.
GroupedTasksNotifier useGroupTasksNotifier() {
  final notifier = useMemoized(() => GroupedTasksNotifier());
  return useListenable(notifier);
}
