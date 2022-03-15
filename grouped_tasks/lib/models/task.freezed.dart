// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
