import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:universal_html/html.dart';

part 'fail_model.freezed.dart';

// part 'fail_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class FailModel with _$FailModel {
  const factory FailModel({
    required String failMessage,
    required String descriptionFail,
    @Default(404) int errorCode,
    VoidCallback? onPressCallback,
  }) = _FailModel;

// factory FailModel.fromJson(Map<String, Object?> json) =>
//     _$FailModelFromJson(json);
}
