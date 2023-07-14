part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.onInit({
    required String ipAddress,
  }) = _OnInitSettingEvent;

  const factory SettingEvent.changeValueCracklingSoundEffect({
    required int value,
  }) = _ChangeValueCracklingSoundEffectSettingEvent;

  const factory SettingEvent.changeSwitchCracklingSoundEffect({
    required bool isCrack,
  }) = _ChangeSwitchCracklingSoundEffectSettingEvent;

  const factory SettingEvent.changeSwitchVoicePrompts({
    required bool isVoicePrompts,
  }) = _ChangeSwitchVoicePromptsSettingEvent;

  const factory SettingEvent.changeBlocPassword({
    required int newPassword,
  }) = _ChangeBlocPasswordSettingEvent;
}
