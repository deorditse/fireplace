// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingEvent {
  FireplaceDataModel get fireplaceData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FireplaceDataModel fireplaceData) onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FireplaceDataModel fireplaceData)? onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FireplaceDataModel fireplaceData)? onInit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingEventCopyWith<SettingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
  @useResult
  $Res call({FireplaceDataModel fireplaceData});

  $FireplaceDataModelCopyWith<$Res> get fireplaceData;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fireplaceData = null,
  }) {
    return _then(_value.copyWith(
      fireplaceData: null == fireplaceData
          ? _value.fireplaceData
          : fireplaceData // ignore: cast_nullable_to_non_nullable
              as FireplaceDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FireplaceDataModelCopyWith<$Res> get fireplaceData {
    return $FireplaceDataModelCopyWith<$Res>(_value.fireplaceData, (value) {
      return _then(_value.copyWith(fireplaceData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OnInitSettingEventCopyWith<$Res>
    implements $SettingEventCopyWith<$Res> {
  factory _$$_OnInitSettingEventCopyWith(_$_OnInitSettingEvent value,
          $Res Function(_$_OnInitSettingEvent) then) =
      __$$_OnInitSettingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FireplaceDataModel fireplaceData});

  @override
  $FireplaceDataModelCopyWith<$Res> get fireplaceData;
}

/// @nodoc
class __$$_OnInitSettingEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$_OnInitSettingEvent>
    implements _$$_OnInitSettingEventCopyWith<$Res> {
  __$$_OnInitSettingEventCopyWithImpl(
      _$_OnInitSettingEvent _value, $Res Function(_$_OnInitSettingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fireplaceData = null,
  }) {
    return _then(_$_OnInitSettingEvent(
      fireplaceData: null == fireplaceData
          ? _value.fireplaceData
          : fireplaceData // ignore: cast_nullable_to_non_nullable
              as FireplaceDataModel,
    ));
  }
}

/// @nodoc

class _$_OnInitSettingEvent implements _OnInitSettingEvent {
  const _$_OnInitSettingEvent({required this.fireplaceData});

  @override
  final FireplaceDataModel fireplaceData;

  @override
  String toString() {
    return 'SettingEvent.onInit(fireplaceData: $fireplaceData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnInitSettingEvent &&
            (identical(other.fireplaceData, fireplaceData) ||
                other.fireplaceData == fireplaceData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fireplaceData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnInitSettingEventCopyWith<_$_OnInitSettingEvent> get copyWith =>
      __$$_OnInitSettingEventCopyWithImpl<_$_OnInitSettingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FireplaceDataModel fireplaceData) onInit,
  }) {
    return onInit(fireplaceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FireplaceDataModel fireplaceData)? onInit,
  }) {
    return onInit?.call(fireplaceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FireplaceDataModel fireplaceData)? onInit,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(fireplaceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
  }) {
    return onInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
  }) {
    return onInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(this);
    }
    return orElse();
  }
}

abstract class _OnInitSettingEvent implements SettingEvent {
  const factory _OnInitSettingEvent(
          {required final FireplaceDataModel fireplaceData}) =
      _$_OnInitSettingEvent;

  @override
  FireplaceDataModel get fireplaceData;
  @override
  @JsonKey(ignore: true)
  _$$_OnInitSettingEventCopyWith<_$_OnInitSettingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$_SettingStateCopyWith(
          _$_SettingState value, $Res Function(_$_SettingState) then) =
      __$$_SettingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_SettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$_SettingState>
    implements _$$_SettingStateCopyWith<$Res> {
  __$$_SettingStateCopyWithImpl(
      _$_SettingState _value, $Res Function(_$_SettingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_SettingState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingState implements _SettingState {
  const _$_SettingState({this.isLoading = true});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SettingState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      __$$_SettingStateCopyWithImpl<_$_SettingState>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({final bool isLoading}) = _$_SettingState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
