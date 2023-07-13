part of 'connected_directly_bloc.dart';

@freezed
class ConnectedDirectlyEvent with _$ConnectedDirectlyEvent {
  const factory ConnectedDirectlyEvent.onInit({
    required String wifiName,
    required String ipAddress,
  }) = _InitConnectedDirectlyEvent;

  const factory ConnectedDirectlyEvent.isPlayOrStopFireplace() =
      _IsPlayOrStopFireplaceEvent;

  const factory ConnectedDirectlyEvent.updateTimerFireplace({
    bool? isIncrement,
    bool? isCancel,
  }) = _UpdateTimerFireplaceConnectedDirectlyEvent;

  const factory ConnectedDirectlyEvent.startTimer() =
      _StartTimerConnectedDirectlyEvent;

  const factory ConnectedDirectlyEvent.changeIsBlocButton({
    bool? isNewBlocButton,
  }) = _ChangeIsBlocButtonConnectedDirectlyEvent;

  const factory ConnectedDirectlyEvent.changeIsSettingButton({
    bool? isNewSettingButton,
  }) = _ChangeIsSettingButtonConnectedDirectlyEvent;

  const factory ConnectedDirectlyEvent.changePowerSliderFireplace({
    required double newValuePowerFireplace,
  }) = _ChangePowerSliderFireplaceConnectedDirectlyEvent;

  const factory ConnectedDirectlyEvent.dispose() =
      _DisposeConnectedDirectlyEvent;
}
