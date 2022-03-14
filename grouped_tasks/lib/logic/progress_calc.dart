import 'package:grouped_tasks/grouped_tasks.dart';

List<double> calculateSumAndCheckedSum(List<TaskGroup> groups) {
  double sum = 0;
  double checked = 0;
  for (var group in groups) {
    for (var task in group.tasks) {
      sum += task.value;
      if (task.checked) {
        checked += task.value;
      }
    }
  }
  return [sum, checked];
}
