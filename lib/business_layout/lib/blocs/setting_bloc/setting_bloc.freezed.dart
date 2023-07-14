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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddress) onInit,
    required TResult Function(int value) changeValueCracklingSoundEffect,
    required TResult Function(bool isCrack) changeSwitchCracklingSoundEffect,
    required TResult Function(bool isVoicePrompts) changeSwitchVoicePrompts,
    required TResult Function(int newPassword) changeBlocPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddress)? onInit,
    TResult? Function(int value)? changeValueCracklingSoundEffect,
    TResult? Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult? Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult? Function(int newPassword)? changeBlocPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddress)? onInit,
    TResult Function(int value)? changeValueCracklingSoundEffect,
    TResult Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult Function(int newPassword)? changeBlocPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
    required TResult Function(
            _ChangeValueCracklingSoundEffectSettingEvent value)
        changeValueCracklingSoundEffect,
    required TResult Function(
            _ChangeSwitchCracklingSoundEffectSettingEvent value)
        changeSwitchCracklingSoundEffect,
    required TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)
        changeSwitchVoicePrompts,
    required TResult Function(_ChangeBlocPasswordSettingEvent value)
        changeBlocPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
    TResult? Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult? Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult? Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult? Function(_ChangeBlocPasswordSettingEvent value)?
        changeBlocPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    TResult Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult Function(_ChangeBlocPasswordSettingEvent value)? changeBlocPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnInitSettingEventCopyWith<$Res> {
  factory _$$_OnInitSettingEventCopyWith(_$_OnInitSettingEvent value,
          $Res Function(_$_OnInitSettingEvent) then) =
      __$$_OnInitSettingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String ipAddress});
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
    Object? ipAddress = null,
  }) {
    return _then(_$_OnInitSettingEvent(
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnInitSettingEvent implements _OnInitSettingEvent {
  const _$_OnInitSettingEvent({required this.ipAddress});

  @override
  final String ipAddress;

  @override
  String toString() {
    return 'SettingEvent.onInit(ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnInitSettingEvent &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ipAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnInitSettingEventCopyWith<_$_OnInitSettingEvent> get copyWith =>
      __$$_OnInitSettingEventCopyWithImpl<_$_OnInitSettingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddress) onInit,
    required TResult Function(int value) changeValueCracklingSoundEffect,
    required TResult Function(bool isCrack) changeSwitchCracklingSoundEffect,
    required TResult Function(bool isVoicePrompts) changeSwitchVoicePrompts,
    required TResult Function(int newPassword) changeBlocPassword,
  }) {
    return onInit(ipAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddress)? onInit,
    TResult? Function(int value)? changeValueCracklingSoundEffect,
    TResult? Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult? Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult? Function(int newPassword)? changeBlocPassword,
  }) {
    return onInit?.call(ipAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddress)? onInit,
    TResult Function(int value)? changeValueCracklingSoundEffect,
    TResult Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult Function(int newPassword)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(ipAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
    required TResult Function(
            _ChangeValueCracklingSoundEffectSettingEvent value)
        changeValueCracklingSoundEffect,
    required TResult Function(
            _ChangeSwitchCracklingSoundEffectSettingEvent value)
        changeSwitchCracklingSoundEffect,
    required TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)
        changeSwitchVoicePrompts,
    required TResult Function(_ChangeBlocPasswordSettingEvent value)
        changeBlocPassword,
  }) {
    return onInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
    TResult? Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult? Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult? Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult? Function(_ChangeBlocPasswordSettingEvent value)?
        changeBlocPassword,
  }) {
    return onInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    TResult Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult Function(_ChangeBlocPasswordSettingEvent value)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(this);
    }
    return orElse();
  }
}

abstract class _OnInitSettingEvent implements SettingEvent {
  const factory _OnInitSettingEvent({required final String ipAddress}) =
      _$_OnInitSettingEvent;

  String get ipAddress;
  @JsonKey(ignore: true)
  _$$_OnInitSettingEventCopyWith<_$_OnInitSettingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeValueCracklingSoundEffectSettingEventCopyWith<$Res> {
  factory _$$_ChangeValueCracklingSoundEffectSettingEventCopyWith(
          _$_ChangeValueCracklingSoundEffectSettingEvent value,
          $Res Function(_$_ChangeValueCracklingSoundEffectSettingEvent) then) =
      __$$_ChangeValueCracklingSoundEffectSettingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_ChangeValueCracklingSoundEffectSettingEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res,
        _$_ChangeValueCracklingSoundEffectSettingEvent>
    implements _$$_ChangeValueCracklingSoundEffectSettingEventCopyWith<$Res> {
  __$$_ChangeValueCracklingSoundEffectSettingEventCopyWithImpl(
      _$_ChangeValueCracklingSoundEffectSettingEvent _value,
      $Res Function(_$_ChangeValueCracklingSoundEffectSettingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChangeValueCracklingSoundEffectSettingEvent(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeValueCracklingSoundEffectSettingEvent
    implements _ChangeValueCracklingSoundEffectSettingEvent {
  const _$_ChangeValueCracklingSoundEffectSettingEvent({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'SettingEvent.changeValueCracklingSoundEffect(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeValueCracklingSoundEffectSettingEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeValueCracklingSoundEffectSettingEventCopyWith<
          _$_ChangeValueCracklingSoundEffectSettingEvent>
      get copyWith =>
          __$$_ChangeValueCracklingSoundEffectSettingEventCopyWithImpl<
              _$_ChangeValueCracklingSoundEffectSettingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddress) onInit,
    required TResult Function(int value) changeValueCracklingSoundEffect,
    required TResult Function(bool isCrack) changeSwitchCracklingSoundEffect,
    required TResult Function(bool isVoicePrompts) changeSwitchVoicePrompts,
    required TResult Function(int newPassword) changeBlocPassword,
  }) {
    return changeValueCracklingSoundEffect(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddress)? onInit,
    TResult? Function(int value)? changeValueCracklingSoundEffect,
    TResult? Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult? Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult? Function(int newPassword)? changeBlocPassword,
  }) {
    return changeValueCracklingSoundEffect?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddress)? onInit,
    TResult Function(int value)? changeValueCracklingSoundEffect,
    TResult Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult Function(int newPassword)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeValueCracklingSoundEffect != null) {
      return changeValueCracklingSoundEffect(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
    required TResult Function(
            _ChangeValueCracklingSoundEffectSettingEvent value)
        changeValueCracklingSoundEffect,
    required TResult Function(
            _ChangeSwitchCracklingSoundEffectSettingEvent value)
        changeSwitchCracklingSoundEffect,
    required TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)
        changeSwitchVoicePrompts,
    required TResult Function(_ChangeBlocPasswordSettingEvent value)
        changeBlocPassword,
  }) {
    return changeValueCracklingSoundEffect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
    TResult? Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult? Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult? Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult? Function(_ChangeBlocPasswordSettingEvent value)?
        changeBlocPassword,
  }) {
    return changeValueCracklingSoundEffect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    TResult Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult Function(_ChangeBlocPasswordSettingEvent value)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeValueCracklingSoundEffect != null) {
      return changeValueCracklingSoundEffect(this);
    }
    return orElse();
  }
}

abstract class _ChangeValueCracklingSoundEffectSettingEvent
    implements SettingEvent {
  const factory _ChangeValueCracklingSoundEffectSettingEvent(
          {required final int value}) =
      _$_ChangeValueCracklingSoundEffectSettingEvent;

  int get value;
  @JsonKey(ignore: true)
  _$$_ChangeValueCracklingSoundEffectSettingEventCopyWith<
          _$_ChangeValueCracklingSoundEffectSettingEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWith<$Res> {
  factory _$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWith(
          _$_ChangeSwitchCracklingSoundEffectSettingEvent value,
          $Res Function(_$_ChangeSwitchCracklingSoundEffectSettingEvent) then) =
      __$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCrack});
}

/// @nodoc
class __$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res,
        _$_ChangeSwitchCracklingSoundEffectSettingEvent>
    implements _$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWith<$Res> {
  __$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWithImpl(
      _$_ChangeSwitchCracklingSoundEffectSettingEvent _value,
      $Res Function(_$_ChangeSwitchCracklingSoundEffectSettingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCrack = null,
  }) {
    return _then(_$_ChangeSwitchCracklingSoundEffectSettingEvent(
      isCrack: null == isCrack
          ? _value.isCrack
          : isCrack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeSwitchCracklingSoundEffectSettingEvent
    implements _ChangeSwitchCracklingSoundEffectSettingEvent {
  const _$_ChangeSwitchCracklingSoundEffectSettingEvent(
      {required this.isCrack});

  @override
  final bool isCrack;

  @override
  String toString() {
    return 'SettingEvent.changeSwitchCracklingSoundEffect(isCrack: $isCrack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSwitchCracklingSoundEffectSettingEvent &&
            (identical(other.isCrack, isCrack) || other.isCrack == isCrack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCrack);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWith<
          _$_ChangeSwitchCracklingSoundEffectSettingEvent>
      get copyWith =>
          __$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWithImpl<
                  _$_ChangeSwitchCracklingSoundEffectSettingEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddress) onInit,
    required TResult Function(int value) changeValueCracklingSoundEffect,
    required TResult Function(bool isCrack) changeSwitchCracklingSoundEffect,
    required TResult Function(bool isVoicePrompts) changeSwitchVoicePrompts,
    required TResult Function(int newPassword) changeBlocPassword,
  }) {
    return changeSwitchCracklingSoundEffect(isCrack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddress)? onInit,
    TResult? Function(int value)? changeValueCracklingSoundEffect,
    TResult? Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult? Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult? Function(int newPassword)? changeBlocPassword,
  }) {
    return changeSwitchCracklingSoundEffect?.call(isCrack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddress)? onInit,
    TResult Function(int value)? changeValueCracklingSoundEffect,
    TResult Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult Function(int newPassword)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeSwitchCracklingSoundEffect != null) {
      return changeSwitchCracklingSoundEffect(isCrack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
    required TResult Function(
            _ChangeValueCracklingSoundEffectSettingEvent value)
        changeValueCracklingSoundEffect,
    required TResult Function(
            _ChangeSwitchCracklingSoundEffectSettingEvent value)
        changeSwitchCracklingSoundEffect,
    required TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)
        changeSwitchVoicePrompts,
    required TResult Function(_ChangeBlocPasswordSettingEvent value)
        changeBlocPassword,
  }) {
    return changeSwitchCracklingSoundEffect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
    TResult? Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult? Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult? Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult? Function(_ChangeBlocPasswordSettingEvent value)?
        changeBlocPassword,
  }) {
    return changeSwitchCracklingSoundEffect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    TResult Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult Function(_ChangeBlocPasswordSettingEvent value)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeSwitchCracklingSoundEffect != null) {
      return changeSwitchCracklingSoundEffect(this);
    }
    return orElse();
  }
}

abstract class _ChangeSwitchCracklingSoundEffectSettingEvent
    implements SettingEvent {
  const factory _ChangeSwitchCracklingSoundEffectSettingEvent(
          {required final bool isCrack}) =
      _$_ChangeSwitchCracklingSoundEffectSettingEvent;

  bool get isCrack;
  @JsonKey(ignore: true)
  _$$_ChangeSwitchCracklingSoundEffectSettingEventCopyWith<
          _$_ChangeSwitchCracklingSoundEffectSettingEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSwitchVoicePromptsSettingEventCopyWith<$Res> {
  factory _$$_ChangeSwitchVoicePromptsSettingEventCopyWith(
          _$_ChangeSwitchVoicePromptsSettingEvent value,
          $Res Function(_$_ChangeSwitchVoicePromptsSettingEvent) then) =
      __$$_ChangeSwitchVoicePromptsSettingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVoicePrompts});
}

/// @nodoc
class __$$_ChangeSwitchVoicePromptsSettingEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res,
        _$_ChangeSwitchVoicePromptsSettingEvent>
    implements _$$_ChangeSwitchVoicePromptsSettingEventCopyWith<$Res> {
  __$$_ChangeSwitchVoicePromptsSettingEventCopyWithImpl(
      _$_ChangeSwitchVoicePromptsSettingEvent _value,
      $Res Function(_$_ChangeSwitchVoicePromptsSettingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVoicePrompts = null,
  }) {
    return _then(_$_ChangeSwitchVoicePromptsSettingEvent(
      isVoicePrompts: null == isVoicePrompts
          ? _value.isVoicePrompts
          : isVoicePrompts // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeSwitchVoicePromptsSettingEvent
    implements _ChangeSwitchVoicePromptsSettingEvent {
  const _$_ChangeSwitchVoicePromptsSettingEvent({required this.isVoicePrompts});

  @override
  final bool isVoicePrompts;

  @override
  String toString() {
    return 'SettingEvent.changeSwitchVoicePrompts(isVoicePrompts: $isVoicePrompts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSwitchVoicePromptsSettingEvent &&
            (identical(other.isVoicePrompts, isVoicePrompts) ||
                other.isVoicePrompts == isVoicePrompts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVoicePrompts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSwitchVoicePromptsSettingEventCopyWith<
          _$_ChangeSwitchVoicePromptsSettingEvent>
      get copyWith => __$$_ChangeSwitchVoicePromptsSettingEventCopyWithImpl<
          _$_ChangeSwitchVoicePromptsSettingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddress) onInit,
    required TResult Function(int value) changeValueCracklingSoundEffect,
    required TResult Function(bool isCrack) changeSwitchCracklingSoundEffect,
    required TResult Function(bool isVoicePrompts) changeSwitchVoicePrompts,
    required TResult Function(int newPassword) changeBlocPassword,
  }) {
    return changeSwitchVoicePrompts(isVoicePrompts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddress)? onInit,
    TResult? Function(int value)? changeValueCracklingSoundEffect,
    TResult? Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult? Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult? Function(int newPassword)? changeBlocPassword,
  }) {
    return changeSwitchVoicePrompts?.call(isVoicePrompts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddress)? onInit,
    TResult Function(int value)? changeValueCracklingSoundEffect,
    TResult Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult Function(int newPassword)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeSwitchVoicePrompts != null) {
      return changeSwitchVoicePrompts(isVoicePrompts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
    required TResult Function(
            _ChangeValueCracklingSoundEffectSettingEvent value)
        changeValueCracklingSoundEffect,
    required TResult Function(
            _ChangeSwitchCracklingSoundEffectSettingEvent value)
        changeSwitchCracklingSoundEffect,
    required TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)
        changeSwitchVoicePrompts,
    required TResult Function(_ChangeBlocPasswordSettingEvent value)
        changeBlocPassword,
  }) {
    return changeSwitchVoicePrompts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
    TResult? Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult? Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult? Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult? Function(_ChangeBlocPasswordSettingEvent value)?
        changeBlocPassword,
  }) {
    return changeSwitchVoicePrompts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    TResult Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult Function(_ChangeBlocPasswordSettingEvent value)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeSwitchVoicePrompts != null) {
      return changeSwitchVoicePrompts(this);
    }
    return orElse();
  }
}

abstract class _ChangeSwitchVoicePromptsSettingEvent implements SettingEvent {
  const factory _ChangeSwitchVoicePromptsSettingEvent(
          {required final bool isVoicePrompts}) =
      _$_ChangeSwitchVoicePromptsSettingEvent;

  bool get isVoicePrompts;
  @JsonKey(ignore: true)
  _$$_ChangeSwitchVoicePromptsSettingEventCopyWith<
          _$_ChangeSwitchVoicePromptsSettingEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeBlocPasswordSettingEventCopyWith<$Res> {
  factory _$$_ChangeBlocPasswordSettingEventCopyWith(
          _$_ChangeBlocPasswordSettingEvent value,
          $Res Function(_$_ChangeBlocPasswordSettingEvent) then) =
      __$$_ChangeBlocPasswordSettingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int newPassword});
}

/// @nodoc
class __$$_ChangeBlocPasswordSettingEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$_ChangeBlocPasswordSettingEvent>
    implements _$$_ChangeBlocPasswordSettingEventCopyWith<$Res> {
  __$$_ChangeBlocPasswordSettingEventCopyWithImpl(
      _$_ChangeBlocPasswordSettingEvent _value,
      $Res Function(_$_ChangeBlocPasswordSettingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
  }) {
    return _then(_$_ChangeBlocPasswordSettingEvent(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeBlocPasswordSettingEvent
    implements _ChangeBlocPasswordSettingEvent {
  const _$_ChangeBlocPasswordSettingEvent({required this.newPassword});

  @override
  final int newPassword;

  @override
  String toString() {
    return 'SettingEvent.changeBlocPassword(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeBlocPasswordSettingEvent &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeBlocPasswordSettingEventCopyWith<_$_ChangeBlocPasswordSettingEvent>
      get copyWith => __$$_ChangeBlocPasswordSettingEventCopyWithImpl<
          _$_ChangeBlocPasswordSettingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddress) onInit,
    required TResult Function(int value) changeValueCracklingSoundEffect,
    required TResult Function(bool isCrack) changeSwitchCracklingSoundEffect,
    required TResult Function(bool isVoicePrompts) changeSwitchVoicePrompts,
    required TResult Function(int newPassword) changeBlocPassword,
  }) {
    return changeBlocPassword(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddress)? onInit,
    TResult? Function(int value)? changeValueCracklingSoundEffect,
    TResult? Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult? Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult? Function(int newPassword)? changeBlocPassword,
  }) {
    return changeBlocPassword?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddress)? onInit,
    TResult Function(int value)? changeValueCracklingSoundEffect,
    TResult Function(bool isCrack)? changeSwitchCracklingSoundEffect,
    TResult Function(bool isVoicePrompts)? changeSwitchVoicePrompts,
    TResult Function(int newPassword)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeBlocPassword != null) {
      return changeBlocPassword(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitSettingEvent value) onInit,
    required TResult Function(
            _ChangeValueCracklingSoundEffectSettingEvent value)
        changeValueCracklingSoundEffect,
    required TResult Function(
            _ChangeSwitchCracklingSoundEffectSettingEvent value)
        changeSwitchCracklingSoundEffect,
    required TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)
        changeSwitchVoicePrompts,
    required TResult Function(_ChangeBlocPasswordSettingEvent value)
        changeBlocPassword,
  }) {
    return changeBlocPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitSettingEvent value)? onInit,
    TResult? Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult? Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult? Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult? Function(_ChangeBlocPasswordSettingEvent value)?
        changeBlocPassword,
  }) {
    return changeBlocPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitSettingEvent value)? onInit,
    TResult Function(_ChangeValueCracklingSoundEffectSettingEvent value)?
        changeValueCracklingSoundEffect,
    TResult Function(_ChangeSwitchCracklingSoundEffectSettingEvent value)?
        changeSwitchCracklingSoundEffect,
    TResult Function(_ChangeSwitchVoicePromptsSettingEvent value)?
        changeSwitchVoicePrompts,
    TResult Function(_ChangeBlocPasswordSettingEvent value)? changeBlocPassword,
    required TResult orElse(),
  }) {
    if (changeBlocPassword != null) {
      return changeBlocPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangeBlocPasswordSettingEvent implements SettingEvent {
  const factory _ChangeBlocPasswordSettingEvent(
      {required final int newPassword}) = _$_ChangeBlocPasswordSettingEvent;

  int get newPassword;
  @JsonKey(ignore: true)
  _$$_ChangeBlocPasswordSettingEventCopyWith<_$_ChangeBlocPasswordSettingEvent>
      get copyWith => throw _privateConstructorUsedError;
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
