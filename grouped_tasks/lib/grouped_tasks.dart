library grouped_tasks;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:grouped_tasks/logic/progress_calc.dart';
import 'package:grouped_tasks/ui/icons/lodgify_icons_icons.dart';
import 'package:grouped_tasks/ui/task_group_widget.dart';

part 'grouped_tasks.freezed.dart';

part 'logic/grouped_tasks_state_notifier.dart';
part 'models/grouped_tasks_list.dart';
part 'models/task_group.dart';
part 'models/task.dart';
part 'ui/grouped_tasks_widget.dart';
