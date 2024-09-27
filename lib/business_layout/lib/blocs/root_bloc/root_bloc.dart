import 'dart:developer';
import 'package:data_layout/data_layout.dart';
import 'package:logger/logger.dart';
import 'package:models/models.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_event.dart';

part 'root_state.dart';

part 'root_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class RootBloc extends Bloc<RootEvent, RootState> {
  final RepositoryFireplace _repositoryFireplace = RepositoryFireplace();
  final LocalNetworkStorage _localNetworkStorage = LocalNetworkStorage();

  RootBloc() : super(const RootState()) {
    on<RootEvent>(
      (RootEvent event, _) {
        event.when<void>(
          onInit: _onInit,
          saveFireplaceInLocalStorage: _saveFireplaceInLocalStorage,
          deleteFireplaceInLocalStorage: _deleteFireplaceInLocalStorage,
          changeFireplaceDataFromLocalStorage:
              _changeFireplaceDataFromLocalStorage,
          addFireplaceInLocalStorage: _addFireplaceInLocalStorage,
          viewDataInLocalStorage: _viewDataInLocalStorage,
        );
      },
    );
  }

  Future<void> _onInit() async {
    try {
      log("root_bloc _onInit");

      //проверка разрешений
      await _initPermissions().then((_) async {
        //инициализация hive
        String? wifiName;
        String? ipAddressFireplace;
        if (RootConstApp.isTestMode) {
          wifiName = "test mode wifi";
        } else {
          await _localNetworkStorage.instanceHiveStorage();
          //получение данных о wifi сети
          wifiName = (await NetworkInfo().getWifiName())?.toLowerCase();
          ipAddressFireplace = await NetworkInfo().getWifiIP();
        }

        if (wifiName == null) {
          emit(
            const RootState(
              failModel: FailModel(
                failMessage: 'wifiName is null',
                descriptionFail: 'Ошибка определения данных сети wifi',
              ),
            ),
          );
          return;
        }

        String? threeWifiName = wifiName;
        if (threeWifiName.split(" ").toList().length >= 3) {
          threeWifiName = wifiName.split(" ").sublist(0, 3).join(" ");
        }

        log("threeWifiName from root_bloc $threeWifiName ipAddress $ipAddressFireplace");

        ///проверка подключения напрямую
        if (_repositoryFireplace.listWifiIdIndicators.contains(threeWifiName)) {
          //ip адресс не меняется для камина
          ipAddressFireplace = "192.168.73.1";
          //камин обнаружен
          emit(
            RootState(
              wifiName: wifiName,
              ipAddress: ipAddressFireplace,
              isLoading: false,
            ),
          );
        } else {
          ///проверка по сохраненным в память каминам

          final List<HomeNetworkModel> listHomeNetworkModel =
              await _localNetworkStorage.getFireplacesInLocalStorage(
            keyWifiName: wifiName,
          );

          if (listHomeNetworkModel.isNotEmpty) {
            emit(
              RootState(
                listFireplacesFromLocalStorage: listHomeNetworkModel,
                isLoading: false,
              ),
            );
          } else {
            emit(
              const RootState(
                failModel: FailModel(
                  failMessage: 'Нет доступных каминов',
                  descriptionFail: 'Ознакомьтесь с инструкцией по подключению',
                ),
              ),
            );
          }
        }
      });
    } catch (e) {
      Logger().log(Level.error, '[root_bloc] _onInit catch error  $e');
    }
  }

  Future<void> _initPermissions() async {
    try {
      const permission = Permission.location;

      if (await permission.isPermanentlyDenied) {
        //если навсегда отключена геопозиция в настройках
        openAppSettings();
        return;
      }

      if (await permission.isDenied) {
        await permission.request();
      }
    } catch (e) {
      Logger().log(Level.error, '[root_bloc] _initPermissions catch error  $e');
    }
  }

  Future<void> _saveFireplaceInLocalStorage(
    HomeNetworkModel homeNetworkModel,
  ) async {
    try {
      log("root_bloc _saveFireplaceInLocalStorage");
      await _localNetworkStorage.addNewFireplaceInLocalStorage(
        homeNetworkModel: homeNetworkModel,
      );
      emit(state.copyWith(
        homeNetworkDataToLocalStorage: homeNetworkModel,
      ));
    } catch (e) {
      Logger().log(Level.error,
          '[root_bloc] _saveFireplaceInLocalStorage catch error  $e');
    }
  }

  Future<void> _deleteFireplaceInLocalStorage(
    String keyWifiName,
    String keyMacAddress,
  ) async {
    try {
      log("root_bloc _deleteFireplaceInLocalStorage");
      await _localNetworkStorage.deleteFireplaceFromLocalStorage(
        keyWifiName: keyWifiName,
        keyMacAddress: keyMacAddress,
      );
    } catch (e) {
      Logger().log(Level.error,
          '[root_bloc] _deleteFireplaceInLocalStorage catch error  $e');
    }
  }

  Future<void> _changeFireplaceDataFromLocalStorage(
    HomeNetworkModel homeNetworkModel,
  ) async {
    try {
      log("root_bloc _changeFireplaceDataFromLocalStorage");

      await _localNetworkStorage.changeFireplaceInLocal(
        homeNetworkModel: homeNetworkModel,
      );
    } catch (e) {
      Logger().log(Level.error,
          '[root_bloc] _changeFireplaceDataFromLocalStorage catch error  $e');
    }
  }

  void _addFireplaceInLocalStorage(
    String nameHomeWifiNetwork,
    String password,
  ) {
    final _homeNetworkModel = HomeNetworkModel(
      customName: ' - ',
      nameHomeWifiNetwork: nameHomeWifiNetwork,
      password: password,
      nameFromHardListWifiName: '',
      ipAddressFireplace: state.ipAddress,
      macAddressInLocalWiFi: '',
    );

    emit(state.copyWith(
      homeNetworkDataToLocalStorage: _homeNetworkModel,
    ));
  }

  Future<void> _viewDataInLocalStorage(String keyWifi) async {
    List<HomeNetworkModel> listHomeNetworkModel = await _localNetworkStorage
        .getFireplacesInLocalStorage(keyWifiName: keyWifi);
    Logger().log(Level.debug,
        '[root_bloc] _viewDataInLocalStorage $listHomeNetworkModel');
  }
}
