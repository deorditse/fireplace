import 'dart:async';
import 'dart:developer';

import 'package:data_layout/data_layout.dart';
import 'package:logger/logger.dart';
import 'package:models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connected_directly_event.dart';

part 'connected_directly_state.dart';

part 'connected_directly_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class ConnectedDirectlyBloc
    extends Bloc<ConnectedDirectlyEvent, ConnectedDirectlyState> {
  String _wifiName = '';
  String _ipAddress = '';
  final NetworkServices _networkServices = NetworkServices();

  ConnectedDirectlyBloc() : super(const ConnectedDirectlyState()) {
    on<ConnectedDirectlyEvent>(
      (ConnectedDirectlyEvent event, _) {
        event.when<void>(
          onInit: _onInit,
          isPlayOrStopFireplace: _isPlayOrStopFireplace,
          updateTimerFireplace: _updateTimerFireplace,
          startTimer: _startTimer,
          changeIsBlocButton: _changeIsBlocButton,
          changeIsSettingButton: _changeIsSettingButton,
          changePowerSliderFireplace: _changePowerSliderFireplace,
          dispose: _dispose,
        );
      },
    );
  }

  Future<void> _onInit(String wifiName, String ipAddress) async {
    try {
      log("connected_directly_bloc _onInit wifiName $wifiName ipAddress $ipAddress");
      _wifiName = wifiName;
      _ipAddress = ipAddress;
      emit(state.copyWith(
        fireplaceData:
            state.fireplaceData?.copyWith(ipAdreesInLocalWiFi: ipAddress),
      ));
      _initialFireplaceData();
    } catch (e) {
      Logger().log(
          Level.error, '[connected_directly_bloc] _onInit catch error  $e');
    }
  }

  Future<void> _initialFireplaceData(
      {bool isStopTimerUpdateApp = false}) async {
    if (RootConstApp.isTestMode) {
      await _initialStartFireplaceData();
    } else {
      //каждые milliseconds: 500 обновляю данные камина
      Timer.periodic(
        const Duration(milliseconds: 500),
        (timer) async {
          //для обновление данных каждые 2 секунды
          if (!isStopTimerUpdateApp && _ipAddress.isNotEmpty) {
            await _initialStartFireplaceData();
          } else {
            timer.cancel();
            print('stopTimer');
          }
        },
      );
    }
  }

  Future<void> _initialStartFireplaceData() async {
    final FireplaceDataModel? newfireplaceData;

    if (RootConstApp.isTestMode) {
      newfireplaceData = TestModeData.listFireplaceDataModel[1];
    } else {
      newfireplaceData = await _networkServices.getFireplaceData(
        ipAdressFireplace: _ipAddress,
      );
    }

    if (newfireplaceData != null && newfireplaceData != state.fireplaceData) {
      emit(
        state.copyWith(
          fireplaceData: newfireplaceData,
          alertMessage: newfireplaceData.statusFireplaceAndMessage.keys.first !=
                  0
              ? newfireplaceData.statusFireplaceAndMessage.values.first!
              : newfireplaceData.isPlayFireplace
                  ? "режим пламени №${newfireplaceData.sliderValue.keys.first ?? 1}"
                  : state.alertMessage,
        ),
      );
    }
  }

  Future<void> _isPlayOrStopFireplace() async {
    try {
      log("connected_directly_bloc _isPlayOrStopFireplace isPlay ${!state.fireplaceData!.isPlayFireplace}");
      await _networkServices.playStopFireplace(
        isPlay: !state.fireplaceData!.isPlayFireplace,
        ipAdressFireplace: _ipAddress,
      );
      if (state.fireplaceData!.isPlayFireplace) {
        add(const ConnectedDirectlyEvent.updateTimerFireplace(isCancel: true));
      }
    } catch (e) {
      Logger().log(Level.error,
          '[connected_directly_bloc] _isPlayOrStopFireplace catch error  $e');
    }
  }

  Future<void> _updateTimerFireplace(bool? isIncrement, bool? isCancel) async {
    try {
      log("connected_directly_bloc _updateTimerFireplace isIncrement $isIncrement isCancel $isCancel");
      if (isCancel != null && isCancel) {
        await _networkServices.resetTimerFireplace(
          isResetTimer: true,
          ipAdressFireplace: _ipAddress,
        );

        return;
      } else if (isIncrement != null && isIncrement) {
        await _networkServices.setAndUpValueTimerFireplace(
          isIncrement: true,
          ipAdressFireplace: _ipAddress,
        );
      } else {
        if (state.fireplaceData!.ustavkaTimer > 0) {
          await _networkServices.setAndUpValueTimerFireplace(
            isIncrement: false,
            ipAdressFireplace: _ipAddress,
          );
        }
      }
    } catch (e) {
      Logger().log(Level.error,
          '[connected_directly_bloc] _updateTimerFireplace catch error  $e');
    }
  }

  Future<void> _startTimer() async {
    try {
      log("connected_directly_bloc _startTimer");
      if (state.fireplaceData!.ustavkaTimer == 0) {
        emit(state.copyWith(isUstavkaTimer: false));
        return;
      }

      await _networkServices.setTimerFireplace(
        isSetTimer: true,
        ipAdressFireplace: _ipAddress,
      );
    } catch (e) {
      Logger().log(
          Level.error, '[connected_directly_bloc] _startTimer catch error  $e');
    }
  }

  Future<void> _changeIsBlocButton(bool? isNewBlocButton) async {
    try {
      log("connected_directly_bloc _changeIsBlocButton isNewBlocButton $isNewBlocButton");

      if (RootConstApp.isTestMode) {
        emit(
          state.copyWith(
            fireplaceData: state.fireplaceData!
                .copyWith(isBlocButton: isNewBlocButton ?? true),
          ),
        );
      } else {
        await _networkServices.blocUnblockFireplace(
          isBlock: isNewBlocButton ?? true,
          ipAdressFireplace: _ipAddress,
        );
      }
    } catch (e) {
      Logger().log(Level.error,
          '[connected_directly_bloc] _changeIsBlocButton catch error  $e');
    }
  }

  void _changeIsSettingButton(bool? isNewSettingButton) {
    try {
      log("connected_directly_bloc _changeIsSettingButton isNewSettingButton $isNewSettingButton");

      emit(
        state.copyWith(
          isSettingButtonActive:
              isNewSettingButton ?? !state.isSettingButtonActive,
        ),
      );
    } catch (e) {
      Logger().log(Level.error,
          '[connected_directly_bloc] _changeIsSettingButton catch error  $e');
    }
  }

  Future<void> _changePowerSliderFireplace(
      double newValuePowerFireplace) async {
    try {
      log("connected_directly_bloc _changePowerSliderFireplace newValuePowerFireplace $newValuePowerFireplace");
      await _networkServices.flameModeFireplace(
        status: newValuePowerFireplace.toInt(),
        ipAdressFireplace: _ipAddress,
      );
    } catch (e) {
      Logger().log(Level.error,
          '[connected_directly_bloc] _changePowerSliderFireplace catch error  $e');
    }
  }

  void _dispose() {
    _initialFireplaceData(isStopTimerUpdateApp: true);
  }
}
