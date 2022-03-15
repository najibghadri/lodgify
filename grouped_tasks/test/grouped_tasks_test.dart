import 'package:flutter_test/flutter_test.dart';
import 'package:grouped_tasks/logic/progress_calc.dart';

import 'test_data.dart';

void main() {
  test('calculates total sum and normalized sum of tasks correctly', () {
    final result = calculateSumAndCheckedSum(tasksGroupsTestData);

    expect(result[0], 227);
    expect(result[1], 81);
  });
}
