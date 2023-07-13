part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(true) bool isLoading,
  }) = _SettingState;
}
