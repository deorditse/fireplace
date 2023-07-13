part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.onInit({
    required FireplaceDataModel fireplaceData,
  }) = _OnInitSettingEvent;
}
