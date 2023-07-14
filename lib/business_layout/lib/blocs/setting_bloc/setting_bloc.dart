import 'dart:developer';
import 'package:data_layout/data_layout.dart';
import 'package:logger/logger.dart';
import 'package:models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.dart';

part 'setting_state.dart';

part 'setting_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  // final RepositoryFireplace _repositoryFireplace = RepositoryFireplace();
  final NetworkServices _networkServices = NetworkServices();

  // final LocalNetworkStorage _localNetworkStorage = LocalNetworkStorage();
  String _ipAddress = '';

  SettingBloc() : super(const SettingState()) {
    on<SettingEvent>(
      (SettingEvent event, _) {
        event.when<void>(
          onInit: _onInit,
          changeValueCracklingSoundEffect: _changeValueCracklingSoundEffect,
          changeSwitchCracklingSoundEffect: _changeSwitchCracklingSoundEffect,
          changeSwitchVoicePrompts: _changeSwitchVoicePrompts,
          changeBlocPassword: _changeBlocPassword,
        );
      },
    );
  }

  void _onInit(String ipAddress) {
    log("setting_bloc _onInit");
    _ipAddress = ipAddress;
  }

  Future<void> _changeSwitchCracklingSoundEffect(bool isCrack) async {
    try {
      log("setting_bloc _changeSwitchCracklingSoundEffect");

      await _networkServices.firewoodCracklingFireplace(
        isCrack: isCrack,
        ipAdressFireplace: _ipAddress,
      );
    } catch (e) {
      Logger().log(Level.error,
          '[setting_bloc] _changeSwitchCracklingSoundEffect catch error  $e');
    }
  }

  Future<void> _changeSwitchVoicePrompts(bool isVoicePrompts) async {
    try {
      log("setting_bloc _changeSwitchVoicePrompts");
      await _networkServices.voicePromptsFireplace(
        isVoicePrompts: isVoicePrompts,
        ipAdressFireplace: _ipAddress,
      );
    } catch (e) {
      Logger().log(Level.error,
          '[setting_bloc] _changeSwitchVoicePrompts catch error  $e');
    }
  }

  Future<void> _changeValueCracklingSoundEffect(int value) async {
    try {
      log("setting_bloc _changeValueCracklingSoundEffect");
      await _networkServices.firewoodCracklingVolumeFireplace(
        volumeCrack: value,
        ipAdressFireplace: _ipAddress,
      );
    } catch (e) {
      Logger().log(Level.error,
          '[setting_bloc] _changeValueCracklingSoundEffect catch error  $e');
    }
  }

  Future<void> _changeBlocPassword(int newPassword) async {
    try {
      log("setting_bloc _changeBlocPassword");
      await _networkServices.changeBlocPassword(
        newPassword: newPassword,
        ipAdressFireplace: _ipAddress,
      );
    } catch (e) {
      Logger().log(
          Level.error, '[setting_bloc] _changeBlocPassword catch error  $e');
    }
  }
}
