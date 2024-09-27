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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnInitSettingEventImplCopyWith<$Res> {
  factory _$$OnInitSettingEventImplCopyWith(_$OnInitSettingEventImpl value,
          $Res Function(_$OnInitSettingEventImpl) then) =
      __$$OnInitSettingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ipAddress});
}

/// @nodoc
class __$$OnInitSettingEventImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$OnInitSettingEventImpl>
    implements _$$OnInitSettingEventImplCopyWith<$Res> {
  __$$OnInitSettingEventImplCopyWithImpl(_$OnInitSettingEventImpl _value,
      $Res Function(_$OnInitSettingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipAddress = null,
  }) {
    return _then(_$OnInitSettingEventImpl(
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnInitSettingEventImpl implements _OnInitSettingEvent {
  const _$OnInitSettingEventImpl({required this.ipAddress});

  @override
  final String ipAddress;

  @override
  String toString() {
    return 'SettingEvent.onInit(ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnInitSettingEventImpl &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ipAddress);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnInitSettingEventImplCopyWith<_$OnInitSettingEventImpl> get copyWith =>
      __$$OnInitSettingEventImplCopyWithImpl<_$OnInitSettingEventImpl>(
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
      _$OnInitSettingEventImpl;

  String get ipAddress;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnInitSettingEventImplCopyWith<_$OnInitSettingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeValueCracklingSoundEffectSettingEventImplCopyWith<
    $Res> {
  factory _$$ChangeValueCracklingSoundEffectSettingEventImplCopyWith(
          _$ChangeValueCracklingSoundEffectSettingEventImpl value,
          $Res Function(_$ChangeValueCracklingSoundEffectSettingEventImpl)
              then) =
      __$$ChangeValueCracklingSoundEffectSettingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$ChangeValueCracklingSoundEffectSettingEventImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res,
        _$ChangeValueCracklingSoundEffectSettingEventImpl>
    implements
        _$$ChangeValueCracklingSoundEffectSettingEventImplCopyWith<$Res> {
  __$$ChangeValueCracklingSoundEffectSettingEventImplCopyWithImpl(
      _$ChangeValueCracklingSoundEffectSettingEventImpl _value,
      $Res Function(_$ChangeValueCracklingSoundEffectSettingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeValueCracklingSoundEffectSettingEventImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeValueCracklingSoundEffectSettingEventImpl
    implements _ChangeValueCracklingSoundEffectSettingEvent {
  const _$ChangeValueCracklingSoundEffectSettingEventImpl(
      {required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'SettingEvent.changeValueCracklingSoundEffect(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeValueCracklingSoundEffectSettingEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeValueCracklingSoundEffectSettingEventImplCopyWith<
          _$ChangeValueCracklingSoundEffectSettingEventImpl>
      get copyWith =>
          __$$ChangeValueCracklingSoundEffectSettingEventImplCopyWithImpl<
                  _$ChangeValueCracklingSoundEffectSettingEventImpl>(
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
      _$ChangeValueCracklingSoundEffectSettingEventImpl;

  int get value;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeValueCracklingSoundEffectSettingEventImplCopyWith<
          _$ChangeValueCracklingSoundEffectSettingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWith<
    $Res> {
  factory _$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWith(
          _$ChangeSwitchCracklingSoundEffectSettingEventImpl value,
          $Res Function(_$ChangeSwitchCracklingSoundEffectSettingEventImpl)
              then) =
      __$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCrack});
}

/// @nodoc
class __$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res,
        _$ChangeSwitchCracklingSoundEffectSettingEventImpl>
    implements
        _$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWith<$Res> {
  __$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWithImpl(
      _$ChangeSwitchCracklingSoundEffectSettingEventImpl _value,
      $Res Function(_$ChangeSwitchCracklingSoundEffectSettingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCrack = null,
  }) {
    return _then(_$ChangeSwitchCracklingSoundEffectSettingEventImpl(
      isCrack: null == isCrack
          ? _value.isCrack
          : isCrack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeSwitchCracklingSoundEffectSettingEventImpl
    implements _ChangeSwitchCracklingSoundEffectSettingEvent {
  const _$ChangeSwitchCracklingSoundEffectSettingEventImpl(
      {required this.isCrack});

  @override
  final bool isCrack;

  @override
  String toString() {
    return 'SettingEvent.changeSwitchCracklingSoundEffect(isCrack: $isCrack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSwitchCracklingSoundEffectSettingEventImpl &&
            (identical(other.isCrack, isCrack) || other.isCrack == isCrack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCrack);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWith<
          _$ChangeSwitchCracklingSoundEffectSettingEventImpl>
      get copyWith =>
          __$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWithImpl<
                  _$ChangeSwitchCracklingSoundEffectSettingEventImpl>(
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
      _$ChangeSwitchCracklingSoundEffectSettingEventImpl;

  bool get isCrack;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSwitchCracklingSoundEffectSettingEventImplCopyWith<
          _$ChangeSwitchCracklingSoundEffectSettingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSwitchVoicePromptsSettingEventImplCopyWith<$Res> {
  factory _$$ChangeSwitchVoicePromptsSettingEventImplCopyWith(
          _$ChangeSwitchVoicePromptsSettingEventImpl value,
          $Res Function(_$ChangeSwitchVoicePromptsSettingEventImpl) then) =
      __$$ChangeSwitchVoicePromptsSettingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVoicePrompts});
}

/// @nodoc
class __$$ChangeSwitchVoicePromptsSettingEventImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res,
        _$ChangeSwitchVoicePromptsSettingEventImpl>
    implements _$$ChangeSwitchVoicePromptsSettingEventImplCopyWith<$Res> {
  __$$ChangeSwitchVoicePromptsSettingEventImplCopyWithImpl(
      _$ChangeSwitchVoicePromptsSettingEventImpl _value,
      $Res Function(_$ChangeSwitchVoicePromptsSettingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVoicePrompts = null,
  }) {
    return _then(_$ChangeSwitchVoicePromptsSettingEventImpl(
      isVoicePrompts: null == isVoicePrompts
          ? _value.isVoicePrompts
          : isVoicePrompts // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeSwitchVoicePromptsSettingEventImpl
    implements _ChangeSwitchVoicePromptsSettingEvent {
  const _$ChangeSwitchVoicePromptsSettingEventImpl(
      {required this.isVoicePrompts});

  @override
  final bool isVoicePrompts;

  @override
  String toString() {
    return 'SettingEvent.changeSwitchVoicePrompts(isVoicePrompts: $isVoicePrompts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSwitchVoicePromptsSettingEventImpl &&
            (identical(other.isVoicePrompts, isVoicePrompts) ||
                other.isVoicePrompts == isVoicePrompts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVoicePrompts);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSwitchVoicePromptsSettingEventImplCopyWith<
          _$ChangeSwitchVoicePromptsSettingEventImpl>
      get copyWith => __$$ChangeSwitchVoicePromptsSettingEventImplCopyWithImpl<
          _$ChangeSwitchVoicePromptsSettingEventImpl>(this, _$identity);

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
      _$ChangeSwitchVoicePromptsSettingEventImpl;

  bool get isVoicePrompts;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSwitchVoicePromptsSettingEventImplCopyWith<
          _$ChangeSwitchVoicePromptsSettingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeBlocPasswordSettingEventImplCopyWith<$Res> {
  factory _$$ChangeBlocPasswordSettingEventImplCopyWith(
          _$ChangeBlocPasswordSettingEventImpl value,
          $Res Function(_$ChangeBlocPasswordSettingEventImpl) then) =
      __$$ChangeBlocPasswordSettingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int newPassword});
}

/// @nodoc
class __$$ChangeBlocPasswordSettingEventImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res,
        _$ChangeBlocPasswordSettingEventImpl>
    implements _$$ChangeBlocPasswordSettingEventImplCopyWith<$Res> {
  __$$ChangeBlocPasswordSettingEventImplCopyWithImpl(
      _$ChangeBlocPasswordSettingEventImpl _value,
      $Res Function(_$ChangeBlocPasswordSettingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
  }) {
    return _then(_$ChangeBlocPasswordSettingEventImpl(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeBlocPasswordSettingEventImpl
    implements _ChangeBlocPasswordSettingEvent {
  const _$ChangeBlocPasswordSettingEventImpl({required this.newPassword});

  @override
  final int newPassword;

  @override
  String toString() {
    return 'SettingEvent.changeBlocPassword(newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBlocPasswordSettingEventImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBlocPasswordSettingEventImplCopyWith<
          _$ChangeBlocPasswordSettingEventImpl>
      get copyWith => __$$ChangeBlocPasswordSettingEventImplCopyWithImpl<
          _$ChangeBlocPasswordSettingEventImpl>(this, _$identity);

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
      {required final int newPassword}) = _$ChangeBlocPasswordSettingEventImpl;

  int get newPassword;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeBlocPasswordSettingEventImplCopyWith<
          _$ChangeBlocPasswordSettingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$SettingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl({this.isLoading = true});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SettingState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({final bool isLoading}) = _$SettingStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
