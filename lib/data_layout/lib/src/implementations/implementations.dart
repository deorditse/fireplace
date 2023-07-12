import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:models/models.dart';
import '../test_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

//каждый раз при изменении запускать кодогенерацию
//для запуска кодогенерации flutter packages pub run build_runner build --delete-conflicting-outputs
//чтобы зарегистрировать как фабрику для GetIt и обращаться к сервис локатору через  MainSimpleStateManagement
//при использовании пакета freezed будет реализовано
//регистрируем как LazySingleton (одиночный) но вытаскиваем по запросу ShoppingData

class ImplementationFireplaceServices {
  Future<FireplaceDataModel?> getFireplaceData(
      {required String ipAdressFireplace, required bool isTestMode}) async {
    if (isTestMode) {
      return listFireplaceDataModel[int.parse(ipAdressFireplace)];
    } else {
      print("ipAdressFireplace from getFireplaceData $ipAdressFireplace");

      final result =
          await http.get(Uri.parse("http://$ipAdressFireplace:1985/status"));

      Map<int, String> _alertMessage = {
        0: "",
        1: "Заправьте камин",
        2: "Недостаточно топлива",
        3: "Готов к старту",
        4: "Разогрев камина",
        5: "Розжиг камина",
        6: "Охлаждение камина",
        7: "ERROR 101",
        8: "ERROR 102",
        9: "ERROR 103",
        10: "ERROR 104",
        11: "ERROR 105",
        12: "ERROR 106",
        13: "ERROR 107",
        14: "ERROR 108",
        15: "Холодное топливо",
        16: "ERROR 109",
        17: "ERROR 110",
        18: "ERROR 111",
        19: "Протечка заправки",
        20: "ERROR 200",
      };

      if (result.statusCode == 200) {
        List<String> _data = result.body.split(';').toList();

        FireplaceDataModel fireplaceData = FireplaceDataModel(
          ///Модель
          model: _data[0].isNotEmpty ? _data[0] : null,

          ///Размер камина
          size: _data[1].isNotEmpty ? double.parse(_data[1]) : null,

          ///Статус блокировки
          //кнопка блокирования экрана нажата?
          isBlocButton: _data[2].isNotEmpty
              ? _data[2] == "0"
                  ? false
                  : true
              : false,

          ///Пароль
          passwordBlock: int.parse(_data[3]),

          ///Температура
          temperature: _data[4].isNotEmpty ? double.parse(_data[4]) : null,

          ///Влажность
          wet: _data[5].isNotEmpty ? double.parse(_data[5]) : null,

          ///Уровень CO2
          CO2value: _data[6].isNotEmpty ? double.parse(_data[6]) : null,

          ///Статус состояния камина, ошибки
          statusFireplaceAndMessage: {
            _data[7].isNotEmpty ? int.parse(_data[7]) : 0:
                _alertMessage[_data[7].isNotEmpty ? int.parse(_data[7]) : 0]
          },

          /// Статус кнопки запуска/остановки
          isPlayFireplace: _data[8].isNotEmpty
              ? _data[8] == "0"
                  ? false
                  : true
              : false,

          ///Количество режимов,  номер режима
          //значение мощности камина / максимальное значение
          sliderValue: {
            _data[10].isNotEmpty ? int.parse(_data[10]) : null:
                _data[9].isNotEmpty ? int.parse(_data[9]) : null
          },

          ///Уровень топлива;
          percentOil: _data[11].isNotEmpty ? double.parse(_data[11]) : null,

          /// S/N - серийный номер
          serialNumber: _data[12].isNotEmpty ? _data[12] : null,

          ///Дата производства
          dateOfManufacture: _data[13].isNotEmpty ? _data[13] : null,

          ///Статус потрескивание дров, уровень громкости
          //Звуковой эффект потрескивание дров
          sliderValueCracklingSoundEffectAndLevelValue: {
            _data[14].isNotEmpty
                ? _data[14] == "0"
                    ? false
                    : true
                : false: _data[15].isNotEmpty ? int.parse(_data[15]) : 10,
          },

          ///Статус голосовые подсказки, уровень громкости;
          //Голосовые подсказки
          sliderValueVoicePromptsAndLevelValue: {
            _data[16].isNotEmpty
                ? _data[16] == "0"
                    ? false
                    : true
                : false: _data[17].isNotEmpty ? int.parse(_data[17]) : 10,
          },

          ///Статус озвучивания нажатий кнопок;
          //звук нажатия кнопок
          isSwitchClickSound: _data[19].isNotEmpty
              ? _data[19] == "0"
                  ? false
                  : true
              : true,

          ///Ссылка на инструкцию по эксплуатации
          linkToUserManual: _data[20].isNotEmpty ? _data[20] : null,

          ///Адрес почты сервисного центра;
          serviceCenterEmailAddress: _data[21].isNotEmpty ? _data[21] : null,

          ///Ссылка на телефон сервисного центра;
          phoneNumberServiceCenter: _data[22].isNotEmpty ? _data[22] : null,

          ///Ссылка на сайт;
          linkOnSite: _data[23].isNotEmpty ? _data[23] : null,

          ///Статус таймера на отключение, значение таймера на отключение;
          optionTimerStatusAndValue: {
            _data[24].isNotEmpty
                ? _data[24] == "0"
                    ? false
                    : true
                : null: _data[25].isNotEmpty ? int.parse(_data[25]) : 0
          },

          ipAdreesInLocalWiFi:
              _data[26].isNotEmpty && _data[26] != "0.0.0.0" ? _data[26] : null,
          macAdreesInLocalWiFi: _data[27].isNotEmpty ? _data[27] : null,
          ustavkaTimer: _data[28].isNotEmpty ? int.parse(_data[28]) : 0,
          //Дс code
          dcCode: null,
        );
        Logger().log(Level.debug,
            'response code = ${result.statusCode} fireplaceData : $fireplaceData');
        return fireplaceData;
      } else {
        return null;
      }
    }
  }

  ///для поиска и подключение к камину с установкой параметров___________________________________________________

  ///получение данных домашней сети
  Future<Box<HomeNetworkModel>?> getInstanceHiveHomeLocalNetworksData(
      {required String keyWifiName}) async {
    return await Hive.openBox<HomeNetworkModel>(keyWifiName);
  }

//
// Future<void>
//     saveInLocalStorageInMapWithWifiNameHomeNetworkAndNameFromListWifiName(
//         {required HomeNetworkModel newHomeLocalNetworksData}) async {
//   try {
//     await Future.delayed(const Duration(seconds: 2));
//
//     ///ToDo: create сохранение данных in локальной памяти
//   } catch (error) {
//     throw Exception(
//         '$error from saveInLocalStorageInMapWithWifiNameHomeNetworkAndNameFromListWifiName Data Layout');
//   }
// }
//
// Future<void>
//     deleteFromLocalStorageFromMapWithWifiNameHomeNetworkAndNameFromListWifiName(
//         {required Map<String, String> newMapHomeWifi}) async {
//   try {
//     await Future.delayed(Duration(seconds: 2));
//
//     ///ToDo: create удаление данных из локальной памяти
//   } catch (error) {
//     throw Exception(
//         '$error from deleteFromLocalStorageFromMapWithWifiNameHomeNetworkAndNameFromListWifiName Data Layout');
//   }
// }

  Future<void> blocUnblockFireplace(
      {required bool isBlock, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/lock?status=${isBlock ? 1 : 0}"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> playStopFireplace(
      {required bool isPlay, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse("http://$ipAdressFireplace:1985/off_on?status=1"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> flameModeFireplace(
      {required int status, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse("http://$ipAdressFireplace:1985/flame_mode?status=$status"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> firewoodCracklingFireplace(
      {required bool isCrack, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse("http://$ipAdressFireplace:1985/firewood_crackling?status=1"),
    );
  }

  Future<void> firewoodCracklingVolumeFireplace(
      {required int volumeCrack, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/firewood_crackling_volume?status=$volumeCrack"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> voicePromptsFireplace(
      {required bool isVoicePrompts, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse("http://$ipAdressFireplace:1985/voice_prompts?status=1"),
    );
  }

  Future<void> voicePromptsVolumeFireplace(
      {required int voicePromptsVolume,
      required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/voice_prompts_volume?status=$voicePromptsVolume"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> buttonClickVoiceoverFireplace(
      {required bool isButtonClickVoice,
      required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/button_click_voiceover?status=1"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> setTimerFireplace(
      {required bool isSetTimer, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse("http://$ipAdressFireplace:1985/set_timer?status=1"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> setAndUpValueTimerFireplace(
      {required bool isIncrement, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/${isIncrement ? "timer_plus" : "timer_minus"}?status=1"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> resetTimerFireplace(
      {required bool isResetTimer, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse("http://$ipAdressFireplace:1985/reset_timer?status=1"),
    );
  }

  Future<void> ssidClientFireplace(
      {required String nameHomeWifiNetwork,
      required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/ssid_client?status=$nameHomeWifiNetwork"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> passwordClientFireplace(
      {required String passwordClient,
      required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/password_client?status=$passwordClient"),
      headers: {"Content-Type": "text/plain"},
    );
  }

  Future<void> changeBlocPassword(
      {required int newPassword, required String ipAdressFireplace}) async {
    await http.post(
      Uri.parse(
          "http://$ipAdressFireplace:1985/set_new_password?status=$newPassword"),
      headers: {"Content-Type": "text/plain"},
    );
  }
}
