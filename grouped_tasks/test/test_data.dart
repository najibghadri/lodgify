import 'package:grouped_tasks/models/task.dart';
import 'package:grouped_tasks/models/task_group.dart';

final tasksGroupsTestData = [
  TaskGroup(
      name: "General Infos",
      tasks: [
        Task(
            description: "Add name and surname",
            value: 10,
            checked: true,
            taskGroupIndex: 0,
            taskIndex: 0),
        Task(
            description: "Add email",
            value: 15,
            checked: false,
            taskGroupIndex: 0,
            taskIndex: 1),
        Task(
            description: "Add linkedin profile",
            value: 8,
            checked: false,
            taskGroupIndex: 0,
            taskIndex: 2),
        Task(
            description: "Provide websites page url",
            value: 5,
            checked: true,
            taskGroupIndex: 0,
            taskIndex: 3)
      ],
      taskGroupIndex: 0,
      isDone: false),
  TaskGroup(
      name: "Accomiplishment",
      tasks: [
        Task(
            description: "Wrote a small poem about the birthdate",
            value: 23,
            checked: false,
            taskGroupIndex: 1,
            taskIndex: 0),
        Task(
            description: "Jump three time with one leg",
            value: 32,
            checked: true,
            taskGroupIndex: 1,
            taskIndex: 1),
        Task(
            description: "Avoid the annoying neighbor",
            value: 2,
            checked: false,
            taskGroupIndex: 1,
            taskIndex: 2),
        Task(
            description: "Say hello to a random person",
            value: 21,
            checked: false,
            taskGroupIndex: 1,
            taskIndex: 3),
        Task(
            description: "Fill the description in at least 3 places",
            value: 12,
            checked: true,
            taskGroupIndex: 1,
            taskIndex: 4)
      ],
      taskGroupIndex: 1,
      isDone: false),
  TaskGroup(
      name: "Personal retrospective",
      tasks: [
        Task(
            description: "Remember a dream",
            value: 15,
            checked: true,
            taskGroupIndex: 2,
            taskIndex: 0),
        Task(
            description: "Have a crush",
            value: 7,
            checked: true,
            taskGroupIndex: 2,
            taskIndex: 1)
      ],
      taskGroupIndex: 2,
      isDone: true),
  TaskGroup(
      name: "Things before leaving",
      tasks: [
        Task(
            description: "Tell what you feel to all the people you know",
            value: 42,
            checked: false,
            taskGroupIndex: 3,
            taskIndex: 0),
        Task(
            description: "Have a pet",
            value: 23,
            checked: false,
            taskGroupIndex: 3,
            taskIndex: 1),
        Task(
            description: "Buy a fashion shirt",
            value: 12,
            checked: false,
            taskGroupIndex: 3,
            taskIndex: 2)
      ],
      taskGroupIndex: 3,
      isDone: false)
];
