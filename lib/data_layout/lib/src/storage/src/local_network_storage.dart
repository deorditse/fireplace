import 'dart:developer';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:models/models.dart';

class LocalNetworkStorage {
  String _wifiName = "";
  Box<HomeNetworkModel>? modelWifiInfoLocalStorageBox;

  Future<void> instanceHiveStorage() async {
    log("___ instanceHiveStorage");

    await Hive.initFlutter();
    // для сложных типов нужно зарегистрировать адаптеры
    Hive.registerAdapter(HomeNetworkModelAdapter());
  }

  Future<void> _openBox({required String keyWifiName}) async {
    if (keyWifiName != _wifiName) {
      _wifiName = keyWifiName;
      modelWifiInfoLocalStorageBox =
          await Hive.openBox<HomeNetworkModel>(keyWifiName);
    }
  }

  Future<List<HomeNetworkModel>> getFireplacesInLocalStorage({
    required String keyWifiName,
  }) async {
    log("___ getFireplacesInLocalStorage $keyWifiName ");
    await _openBox(keyWifiName: keyWifiName);

    return modelWifiInfoLocalStorageBox?.values.toList() ?? [];
  }

  Future<void> addNewFireplaceInLocalStorage({
    required HomeNetworkModel homeNetworkModel,
  }) async {
    log("___ addNewFireplaceInLocalStorage  $homeNetworkModel");

    await _openBox(keyWifiName: homeNetworkModel.nameHomeWifiNetwork);
    await modelWifiInfoLocalStorageBox?.add(homeNetworkModel);
  }

  Future<void> deleteFireplaceFromLocalStorage({
    required String keyWifiName,
    required String keyMacAddress,
  }) async {
    log("___ deleteFireplaceFromLocalStorage keyWifiName $keyWifiName keyMacAddress $keyMacAddress");

    await _openBox(keyWifiName: keyWifiName);
    final rec = modelWifiInfoLocalStorageBox!.values.firstWhere(
      (element) => element.macAddressInLocalWiFi == keyMacAddress,
    );
    await rec.delete();
  }

  Future<void> changeFireplaceInLocal({
    required HomeNetworkModel homeNetworkModel,
  }) async {
    log("___ changeFireplaceInLocal  homeNetworkModel $homeNetworkModel");
    await _openBox(keyWifiName: homeNetworkModel.nameHomeWifiNetwork);

    final rec = modelWifiInfoLocalStorageBox!.values.firstWhere(
      (element) =>
          element.macAddressInLocalWiFi ==
          homeNetworkModel.macAddressInLocalWiFi,
    );
    rec.customName = homeNetworkModel.customName;
    rec.password = homeNetworkModel.password;
    await rec.save();
  }
}
