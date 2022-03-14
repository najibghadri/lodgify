// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of grouped_tasks;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupedTasksListTearOff {
  const _$GroupedTasksListTearOff();

  _GroupedTasksList call(
      {required List<TaskGroup> groups, required double progress}) {
    return _GroupedTasksList(
      groups: groups,
      progress: progress,
    );
  }
}

/// @nodoc
const $GroupedTasksList = _$GroupedTasksListTearOff();

/// @nodoc
mixin _$GroupedTasksList {
  List<TaskGroup> get groups => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupedTasksListCopyWith<GroupedTasksList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedTasksListCopyWith<$Res> {
  factory $GroupedTasksListCopyWith(
          GroupedTasksList value, $Res Function(GroupedTasksList) then) =
      _$GroupedTasksListCopyWithImpl<$Res>;
  $Res call({List<TaskGroup> groups, double progress});
}

/// @nodoc
class _$GroupedTasksListCopyWithImpl<$Res>
    implements $GroupedTasksListCopyWith<$Res> {
  _$GroupedTasksListCopyWithImpl(this._value, this._then);

  final GroupedTasksList _value;
  // ignore: unused_field
  final $Res Function(GroupedTasksList) _then;

  @override
  $Res call({
    Object? groups = freezed,
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<TaskGroup>,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$GroupedTasksListCopyWith<$Res>
    implements $GroupedTasksListCopyWith<$Res> {
  factory _$GroupedTasksListCopyWith(
          _GroupedTasksList value, $Res Function(_GroupedTasksList) then) =
      __$GroupedTasksListCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskGroup> groups, double progress});
}

/// @nodoc
class __$GroupedTasksListCopyWithImpl<$Res>
    extends _$GroupedTasksListCopyWithImpl<$Res>
    implements _$GroupedTasksListCopyWith<$Res> {
  __$GroupedTasksListCopyWithImpl(
      _GroupedTasksList _value, $Res Function(_GroupedTasksList) _then)
      : super(_value, (v) => _then(v as _GroupedTasksList));

  @override
  _GroupedTasksList get _value => super._value as _GroupedTasksList;

  @override
  $Res call({
    Object? groups = freezed,
    Object? progress = freezed,
  }) {
    return _then(_GroupedTasksList(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<TaskGroup>,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GroupedTasksList extends _GroupedTasksList {
  _$_GroupedTasksList({required this.groups, required this.progress})
      : super._();

  @override
  final List<TaskGroup> groups;
  @override
  final double progress;

  @override
  String toString() {
    return 'GroupedTasksList(groups: $groups, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupedTasksList &&
            const DeepCollectionEquality().equals(other.groups, groups) &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groups),
      const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$GroupedTasksListCopyWith<_GroupedTasksList> get copyWith =>
      __$GroupedTasksListCopyWithImpl<_GroupedTasksList>(this, _$identity);
}

abstract class _GroupedTasksList extends GroupedTasksList {
  factory _GroupedTasksList(
      {required List<TaskGroup> groups,
      required double progress}) = _$_GroupedTasksList;
  _GroupedTasksList._() : super._();

  @override
  List<TaskGroup> get groups;
  @override
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$GroupedTasksListCopyWith<_GroupedTasksList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TaskGroupTearOff {
  const _$TaskGroupTearOff();

  _TaskGroup call(
      {required String name,
      required List<Task> tasks,
      required int taskGroupIndex}) {
    return _TaskGroup(
      name: name,
      tasks: tasks,
      taskGroupIndex: taskGroupIndex,
    );
  }
}

/// @nodoc
const $TaskGroup = _$TaskGroupTearOff();

/// @nodoc
mixin _$TaskGroup {
  String get name => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  int get taskGroupIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskGroupCopyWith<TaskGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskGroupCopyWith<$Res> {
  factory $TaskGroupCopyWith(TaskGroup value, $Res Function(TaskGroup) then) =
      _$TaskGroupCopyWithImpl<$Res>;
  $Res call({String name, List<Task> tasks, int taskGroupIndex});
}

/// @nodoc
class _$TaskGroupCopyWithImpl<$Res> implements $TaskGroupCopyWith<$Res> {
  _$TaskGroupCopyWithImpl(this._value, this._then);

  final TaskGroup _value;
  // ignore: unused_field
  final $Res Function(TaskGroup) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? tasks = freezed,
    Object? taskGroupIndex = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      taskGroupIndex: taskGroupIndex == freezed
          ? _value.taskGroupIndex
          : taskGroupIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaskGroupCopyWith<$Res> implements $TaskGroupCopyWith<$Res> {
  factory _$TaskGroupCopyWith(
          _TaskGroup value, $Res Function(_TaskGroup) then) =
      __$TaskGroupCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<Task> tasks, int taskGroupIndex});
}

/// @nodoc
class __$TaskGroupCopyWithImpl<$Res> extends _$TaskGroupCopyWithImpl<$Res>
    implements _$TaskGroupCopyWith<$Res> {
  __$TaskGroupCopyWithImpl(_TaskGroup _value, $Res Function(_TaskGroup) _then)
      : super(_value, (v) => _then(v as _TaskGroup));

  @override
  _TaskGroup get _value => super._value as _TaskGroup;

  @override
  $Res call({
    Object? name = freezed,
    Object? tasks = freezed,
    Object? taskGroupIndex = freezed,
  }) {
    return _then(_TaskGroup(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      taskGroupIndex: taskGroupIndex == freezed
          ? _value.taskGroupIndex
          : taskGroupIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TaskGroup implements _TaskGroup {
  _$_TaskGroup(
      {required this.name, required this.tasks, required this.taskGroupIndex});

  @override
  final String name;
  @override
  final List<Task> tasks;
  @override
  final int taskGroupIndex;

  @override
  String toString() {
    return 'TaskGroup(name: $name, tasks: $tasks, taskGroupIndex: $taskGroupIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskGroup &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.tasks, tasks) &&
            const DeepCollectionEquality()
                .equals(other.taskGroupIndex, taskGroupIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(tasks),
      const DeepCollectionEquality().hash(taskGroupIndex));

  @JsonKey(ignore: true)
  @override
  _$TaskGroupCopyWith<_TaskGroup> get copyWith =>
      __$TaskGroupCopyWithImpl<_TaskGroup>(this, _$identity);
}

abstract class _TaskGroup implements TaskGroup {
  factory _TaskGroup(
      {required String name,
      required List<Task> tasks,
      required int taskGroupIndex}) = _$_TaskGroup;

  @override
  String get name;
  @override
  List<Task> get tasks;
  @override
  int get taskGroupIndex;
  @override
  @JsonKey(ignore: true)
  _$TaskGroupCopyWith<_TaskGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {required String description,
      required int value,
      required bool checked,
      required int taskGroupIndex,
      required int taskIndex}) {
    return _Task(
      description: description,
      value: value,
      checked: checked,
      taskGroupIndex: taskGroupIndex,
      taskIndex: taskIndex,
    );
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String get description => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  bool get checked => throw _privateConstructorUsedError;
  int get taskGroupIndex => throw _privateConstructorUsedError;
  int get taskIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String description,
      int value,
      bool checked,
      int taskGroupIndex,
      int taskIndex});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? value = freezed,
    Object? checked = freezed,
    Object? taskGroupIndex = freezed,
    Object? taskIndex = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      checked: checked == freezed
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
      taskGroupIndex: taskGroupIndex == freezed
          ? _value.taskGroupIndex
          : taskGroupIndex // ignore: cast_nullable_to_non_nullable
              as int,
      taskIndex: taskIndex == freezed
          ? _value.taskIndex
          : taskIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      int value,
      bool checked,
      int taskGroupIndex,
      int taskIndex});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? description = freezed,
    Object? value = freezed,
    Object? checked = freezed,
    Object? taskGroupIndex = freezed,
    Object? taskIndex = freezed,
  }) {
    return _then(_Task(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      checked: checked == freezed
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
      taskGroupIndex: taskGroupIndex == freezed
          ? _value.taskGroupIndex
          : taskGroupIndex // ignore: cast_nullable_to_non_nullable
              as int,
      taskIndex: taskIndex == freezed
          ? _value.taskIndex
          : taskIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Task implements _Task {
  _$_Task(
      {required this.description,
      required this.value,
      required this.checked,
      required this.taskGroupIndex,
      required this.taskIndex});

  @override
  final String description;
  @override
  final int value;
  @override
  final bool checked;
  @override
  final int taskGroupIndex;
  @override
  final int taskIndex;

  @override
  String toString() {
    return 'Task(description: $description, value: $value, checked: $checked, taskGroupIndex: $taskGroupIndex, taskIndex: $taskIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.checked, checked) &&
            const DeepCollectionEquality()
                .equals(other.taskGroupIndex, taskGroupIndex) &&
            const DeepCollectionEquality().equals(other.taskIndex, taskIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(checked),
      const DeepCollectionEquality().hash(taskGroupIndex),
      const DeepCollectionEquality().hash(taskIndex));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task implements Task {
  factory _Task(
      {required String description,
      required int value,
      required bool checked,
      required int taskGroupIndex,
      required int taskIndex}) = _$_Task;

  @override
  String get description;
  @override
  int get value;
  @override
  bool get checked;
  @override
  int get taskGroupIndex;
  @override
  int get taskIndex;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
