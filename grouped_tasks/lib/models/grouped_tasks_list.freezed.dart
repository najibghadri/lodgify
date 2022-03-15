// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grouped_tasks_list.dart';

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
      {required List<TaskGroup> groups,
      required double progress,
      required double sum,
      required double checkedSum}) {
    return _GroupedTasksList(
      groups: groups,
      progress: progress,
      sum: sum,
      checkedSum: checkedSum,
    );
  }
}

/// @nodoc
const $GroupedTasksList = _$GroupedTasksListTearOff();

/// @nodoc
mixin _$GroupedTasksList {
  List<TaskGroup> get groups => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  double get checkedSum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupedTasksListCopyWith<GroupedTasksList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedTasksListCopyWith<$Res> {
  factory $GroupedTasksListCopyWith(
          GroupedTasksList value, $Res Function(GroupedTasksList) then) =
      _$GroupedTasksListCopyWithImpl<$Res>;
  $Res call(
      {List<TaskGroup> groups, double progress, double sum, double checkedSum});
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
    Object? sum = freezed,
    Object? checkedSum = freezed,
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
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      checkedSum: checkedSum == freezed
          ? _value.checkedSum
          : checkedSum // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {List<TaskGroup> groups, double progress, double sum, double checkedSum});
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
    Object? sum = freezed,
    Object? checkedSum = freezed,
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
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      checkedSum: checkedSum == freezed
          ? _value.checkedSum
          : checkedSum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GroupedTasksList extends _GroupedTasksList {
  _$_GroupedTasksList(
      {required this.groups,
      required this.progress,
      required this.sum,
      required this.checkedSum})
      : super._();

  @override
  final List<TaskGroup> groups;
  @override
  final double progress;
  @override
  final double sum;
  @override
  final double checkedSum;

  @override
  String toString() {
    return 'GroupedTasksList(groups: $groups, progress: $progress, sum: $sum, checkedSum: $checkedSum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupedTasksList &&
            const DeepCollectionEquality().equals(other.groups, groups) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.sum, sum) &&
            const DeepCollectionEquality()
                .equals(other.checkedSum, checkedSum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groups),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(sum),
      const DeepCollectionEquality().hash(checkedSum));

  @JsonKey(ignore: true)
  @override
  _$GroupedTasksListCopyWith<_GroupedTasksList> get copyWith =>
      __$GroupedTasksListCopyWithImpl<_GroupedTasksList>(this, _$identity);
}

abstract class _GroupedTasksList extends GroupedTasksList {
  factory _GroupedTasksList(
      {required List<TaskGroup> groups,
      required double progress,
      required double sum,
      required double checkedSum}) = _$_GroupedTasksList;
  _GroupedTasksList._() : super._();

  @override
  List<TaskGroup> get groups;
  @override
  double get progress;
  @override
  double get sum;
  @override
  double get checkedSum;
  @override
  @JsonKey(ignore: true)
  _$GroupedTasksListCopyWith<_GroupedTasksList> get copyWith =>
      throw _privateConstructorUsedError;
}
