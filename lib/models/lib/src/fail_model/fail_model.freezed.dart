// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FailModel {
  String get failMessage => throw _privateConstructorUsedError;
  String get descriptionFail => throw _privateConstructorUsedError;
  int get errorCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailModelCopyWith<FailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailModelCopyWith<$Res> {
  factory $FailModelCopyWith(FailModel value, $Res Function(FailModel) then) =
      _$FailModelCopyWithImpl<$Res, FailModel>;
  @useResult
  $Res call({String failMessage, String descriptionFail, int errorCode});
}

/// @nodoc
class _$FailModelCopyWithImpl<$Res, $Val extends FailModel>
    implements $FailModelCopyWith<$Res> {
  _$FailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failMessage = null,
    Object? descriptionFail = null,
    Object? errorCode = null,
  }) {
    return _then(_value.copyWith(
      failMessage: null == failMessage
          ? _value.failMessage
          : failMessage // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionFail: null == descriptionFail
          ? _value.descriptionFail
          : descriptionFail // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FailModelCopyWith<$Res> implements $FailModelCopyWith<$Res> {
  factory _$$_FailModelCopyWith(
          _$_FailModel value, $Res Function(_$_FailModel) then) =
      __$$_FailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failMessage, String descriptionFail, int errorCode});
}

/// @nodoc
class __$$_FailModelCopyWithImpl<$Res>
    extends _$FailModelCopyWithImpl<$Res, _$_FailModel>
    implements _$$_FailModelCopyWith<$Res> {
  __$$_FailModelCopyWithImpl(
      _$_FailModel _value, $Res Function(_$_FailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failMessage = null,
    Object? descriptionFail = null,
    Object? errorCode = null,
  }) {
    return _then(_$_FailModel(
      failMessage: null == failMessage
          ? _value.failMessage
          : failMessage // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionFail: null == descriptionFail
          ? _value.descriptionFail
          : descriptionFail // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FailModel implements _FailModel {
  const _$_FailModel(
      {required this.failMessage,
      required this.descriptionFail,
      this.errorCode = 404});

  @override
  final String failMessage;
  @override
  final String descriptionFail;
  @override
  @JsonKey()
  final int errorCode;

  @override
  String toString() {
    return 'FailModel(failMessage: $failMessage, descriptionFail: $descriptionFail, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailModel &&
            (identical(other.failMessage, failMessage) ||
                other.failMessage == failMessage) &&
            (identical(other.descriptionFail, descriptionFail) ||
                other.descriptionFail == descriptionFail) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failMessage, descriptionFail, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailModelCopyWith<_$_FailModel> get copyWith =>
      __$$_FailModelCopyWithImpl<_$_FailModel>(this, _$identity);
}

abstract class _FailModel implements FailModel {
  const factory _FailModel(
      {required final String failMessage,
      required final String descriptionFail,
      final int errorCode}) = _$_FailModel;

  @override
  String get failMessage;
  @override
  String get descriptionFail;
  @override
  int get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$_FailModelCopyWith<_$_FailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
