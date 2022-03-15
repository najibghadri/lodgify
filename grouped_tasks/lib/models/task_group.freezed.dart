// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskGroupTearOff {
  const _$TaskGroupTearOff();

  _TaskGroup call(
      {required String name,
      required List<Task> tasks,
      required int taskGroupIndex,
      required bool isDone}) {
    return _TaskGroup(
      name: name,
      tasks: tasks,
      taskGroupIndex: taskGroupIndex,
      isDone: isDone,
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
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskGroupCopyWith<TaskGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskGroupCopyWith<$Res> {
  factory $TaskGroupCopyWith(TaskGroup value, $Res Function(TaskGroup) then) =
      _$TaskGroupCopyWithImpl<$Res>;
  $Res call({String name, List<Task> tasks, int taskGroupIndex, bool isDone});
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
    Object? isDone = freezed,
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
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TaskGroupCopyWith<$Res> implements $TaskGroupCopyWith<$Res> {
  factory _$TaskGroupCopyWith(
          _TaskGroup value, $Res Function(_TaskGroup) then) =
      __$TaskGroupCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<Task> tasks, int taskGroupIndex, bool isDone});
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
    Object? isDone = freezed,
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
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskGroup implements _TaskGroup {
  _$_TaskGroup(
      {required this.name,
      required this.tasks,
      required this.taskGroupIndex,
      required this.isDone});

  @override
  final String name;
  @override
  final List<Task> tasks;
  @override
  final int taskGroupIndex;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'TaskGroup(name: $name, tasks: $tasks, taskGroupIndex: $taskGroupIndex, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskGroup &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.tasks, tasks) &&
            const DeepCollectionEquality()
                .equals(other.taskGroupIndex, taskGroupIndex) &&
            const DeepCollectionEquality().equals(other.isDone, isDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(tasks),
      const DeepCollectionEquality().hash(taskGroupIndex),
      const DeepCollectionEquality().hash(isDone));

  @JsonKey(ignore: true)
  @override
  _$TaskGroupCopyWith<_TaskGroup> get copyWith =>
      __$TaskGroupCopyWithImpl<_TaskGroup>(this, _$identity);
}

abstract class _TaskGroup implements TaskGroup {
  factory _TaskGroup(
      {required String name,
      required List<Task> tasks,
      required int taskGroupIndex,
      required bool isDone}) = _$_TaskGroup;

  @override
  String get name;
  @override
  List<Task> get tasks;
  @override
  int get taskGroupIndex;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$TaskGroupCopyWith<_TaskGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
