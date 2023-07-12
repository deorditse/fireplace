// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connected_directly_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectedDirectlyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitConnectedDirectlyEvent value) onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitConnectedDirectlyEvent value)? onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitConnectedDirectlyEvent value)? onInit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectedDirectlyEventCopyWith<$Res> {
  factory $ConnectedDirectlyEventCopyWith(ConnectedDirectlyEvent value,
          $Res Function(ConnectedDirectlyEvent) then) =
      _$ConnectedDirectlyEventCopyWithImpl<$Res, ConnectedDirectlyEvent>;
}

/// @nodoc
class _$ConnectedDirectlyEventCopyWithImpl<$Res,
        $Val extends ConnectedDirectlyEvent>
    implements $ConnectedDirectlyEventCopyWith<$Res> {
  _$ConnectedDirectlyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitConnectedDirectlyEventCopyWith<$Res> {
  factory _$$_InitConnectedDirectlyEventCopyWith(
          _$_InitConnectedDirectlyEvent value,
          $Res Function(_$_InitConnectedDirectlyEvent) then) =
      __$$_InitConnectedDirectlyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitConnectedDirectlyEventCopyWithImpl<$Res>
    extends _$ConnectedDirectlyEventCopyWithImpl<$Res,
        _$_InitConnectedDirectlyEvent>
    implements _$$_InitConnectedDirectlyEventCopyWith<$Res> {
  __$$_InitConnectedDirectlyEventCopyWithImpl(
      _$_InitConnectedDirectlyEvent _value,
      $Res Function(_$_InitConnectedDirectlyEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitConnectedDirectlyEvent implements _InitConnectedDirectlyEvent {
  const _$_InitConnectedDirectlyEvent();

  @override
  String toString() {
    return 'ConnectedDirectlyEvent.onInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitConnectedDirectlyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
  }) {
    return onInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
  }) {
    return onInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitConnectedDirectlyEvent value) onInit,
  }) {
    return onInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitConnectedDirectlyEvent value)? onInit,
  }) {
    return onInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitConnectedDirectlyEvent value)? onInit,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(this);
    }
    return orElse();
  }
}

abstract class _InitConnectedDirectlyEvent implements ConnectedDirectlyEvent {
  const factory _InitConnectedDirectlyEvent() = _$_InitConnectedDirectlyEvent;
}

/// @nodoc
mixin _$ConnectedDirectlyState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectedDirectlyStateCopyWith<ConnectedDirectlyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectedDirectlyStateCopyWith<$Res> {
  factory $ConnectedDirectlyStateCopyWith(ConnectedDirectlyState value,
          $Res Function(ConnectedDirectlyState) then) =
      _$ConnectedDirectlyStateCopyWithImpl<$Res, ConnectedDirectlyState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$ConnectedDirectlyStateCopyWithImpl<$Res,
        $Val extends ConnectedDirectlyState>
    implements $ConnectedDirectlyStateCopyWith<$Res> {
  _$ConnectedDirectlyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectedDirectlyStateCopyWith<$Res>
    implements $ConnectedDirectlyStateCopyWith<$Res> {
  factory _$$_ConnectedDirectlyStateCopyWith(_$_ConnectedDirectlyState value,
          $Res Function(_$_ConnectedDirectlyState) then) =
      __$$_ConnectedDirectlyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_ConnectedDirectlyStateCopyWithImpl<$Res>
    extends _$ConnectedDirectlyStateCopyWithImpl<$Res,
        _$_ConnectedDirectlyState>
    implements _$$_ConnectedDirectlyStateCopyWith<$Res> {
  __$$_ConnectedDirectlyStateCopyWithImpl(_$_ConnectedDirectlyState _value,
      $Res Function(_$_ConnectedDirectlyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_ConnectedDirectlyState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConnectedDirectlyState implements _ConnectedDirectlyState {
  const _$_ConnectedDirectlyState({this.isLoading = true});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ConnectedDirectlyState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectedDirectlyState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectedDirectlyStateCopyWith<_$_ConnectedDirectlyState> get copyWith =>
      __$$_ConnectedDirectlyStateCopyWithImpl<_$_ConnectedDirectlyState>(
          this, _$identity);
}

abstract class _ConnectedDirectlyState implements ConnectedDirectlyState {
  const factory _ConnectedDirectlyState({final bool isLoading}) =
      _$_ConnectedDirectlyState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectedDirectlyStateCopyWith<_$_ConnectedDirectlyState> get copyWith =>
      throw _privateConstructorUsedError;
}
